clc
close all
clear all

% Create a square matrix
M = 256;    % Matrix height
N2 = 256;   % Matrix width
S0 = zeros(M,N2);

% Create a centered rectangular region with value 1
S0(M/8+1:M*7/8,N2/8+1:N2*7/8) = 1;

% Compute the 2-D Fourier transform of the original signal
S0_ff = fftshift(fft2(fftshift(S0)));

% Take the magnitude of the spectrum
S0_ff = abs(S0_ff);

% Normalize the spectrum
S0_ff = S0_ff./max(max(S0_ff));

% Convert the normalized spectrum to decibel scale
S0_ff = 20*log10(S0_ff+1e-4);

% Display the original signal
% figure
% imagesc(S0);
% colormap gray                 % Use a predefined grayscale colormap
% axis off image                % Hide axes and preserve image aspect ratio
%
% % Other available colormaps:
% % colormap parula
% % colormap jet
% % colormap hot
% % colormap cool
% % colormap spring
% % colormap summer
% % colormap autumn
% % colormap winter
% % ...
%
% Display the spectrum of the original signal
% figure
% imagesc(S0_ff);
% colormap gray
% axis off image


%% Distort / shear the signal

S1 = zeros(M,N2);

% Transformation angle
theta = -pi/12;

for ii = 1:M
    for jj = 1:N2
        
        % Shift the coordinate origin to the center of the matrix
        x = jj-N2/2;
        y = ii-M/2;
        
        % Apply a shear/distortion transformation
        At = [1 0; sin(-theta) cos(-theta)]*[x y].';
        
        % Convert transformed coordinates back to matrix indices
        xx = round(At(1,1)+N2/2);
        yy = round(At(2,1)+M/2);
        
        % Equivalent coordinate calculation
        % xx = round(x+N/2);
        % yy = round(x*sin(-theta)+y*cos(-theta)+M/2);
        
        % Copy the original pixel value if the transformed coordinate
        % remains inside the image boundaries
        if(xx>=1 && xx<=N2 && yy>=1 && yy<=N2)
            S1(ii,jj) = S0(yy,xx);
        end
    end
end

% Compute the 2-D Fourier transform of the distorted signal
S1_ff = fftshift(fft2(fftshift(S1)));

% Take the magnitude of the spectrum
S1_ff = abs(S1_ff);

% Normalize the spectrum
S1_ff = S1_ff./max(max(S1_ff));

% Convert the spectrum to decibel scale
S1_ff = 20*log10(S1_ff+1e-4);

% Display the distorted signal
% figure
% imagesc(S1);
% colormap gray
% axis off image
%
% Display the spectrum of the distorted signal
% figure
% imagesc(S1_ff);
% colormap gray
% axis off image


%% Rotate the signal

S2 = zeros(M,N2);

for ii = 1:M
    for jj = 1:N2
        
        % Shift the coordinate origin to the center of the matrix
        x = jj-N2/2;
        y = ii-M/2;
        
        % Apply a standard 2-D rotation transformation
        At = [cos(-theta) -sin(-theta); ...
              sin(-theta)  cos(-theta)]*[x y].';
        
        % Convert transformed coordinates back to matrix indices
        xx = round(At(1,1)+N2/2);
        yy = round(At(2,1)+M/2);
        
        % Equivalent coordinate calculation
        % xx = round(x*cos(-theta)-y*sin(-theta)+N/2);
        % yy = round(x*sin(-theta)+y*cos(-theta)+M/2);
        
        % Copy the original pixel value if the transformed coordinate
        % remains inside the image boundaries
        if(xx>=1 && xx<=N2 && yy>=1 && yy<=N2)
            S2(ii,jj) = S0(yy,xx);
        end
    end
end

% Compute the 2-D Fourier transform of the rotated signal
S2_ff = fftshift(fft2(fftshift(S2)));

% Take the magnitude of the spectrum
S2_ff = abs(S2_ff);

% Normalize the spectrum
S2_ff = S2_ff./max(max(S2_ff));

% Convert the spectrum to decibel scale
S2_ff = 20*log10(S2_ff+1e-4);

% Display the rotated signal
% figure
% imagesc(S2);
% colormap gray
% axis off image
%
% Display the spectrum of the rotated signal
% figure
% imagesc(S2_ff);
% colormap gray
% axis off image


%% Plot all results

figure;
colormap gray

% Original signal in the spatial/time domain
subplot(2,3,1)
imagesc(S0);
axis off image
title('(a) Original Signal, Spatial Domain')

% Spectrum of the original signal
subplot(2,3,4)
imagesc(S0_ff);
axis off image
title('(b) Original Signal Spectrum')

% Distorted signal in the spatial/time domain
subplot(2,3,2)
imagesc(S1);
axis off image
title('(c) Distorted Signal, Spatial Domain')

% Spectrum of the distorted signal
subplot(2,3,5)
imagesc(S1_ff);
axis off image
title('(d) Distorted Signal Spectrum')

% Rotated signal in the spatial/time domain
subplot(2,3,3)
imagesc(S2);
axis off image
title('(e) Rotated Signal, Spatial Domain')

% Spectrum of the rotated signal
subplot(2,3,6)
imagesc(S2_ff);
axis off image
title('(f) Rotated Signal Spectrum')

% Overall figure title
suptitle('Figure 2.2 Fourier Transform Pairs with Data Distortion and Rotation')
