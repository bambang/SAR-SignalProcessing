Repo ini berisi kode untuk buku berikut:

# Digital Processing of Synthetic Aperture Radar Data 

Cumming, I. G., & Wong, F. H. (2005). Digital processing of synthetic aperture radar data: Algorithms and implementation

## Daftar Isi

### Bab 1

### Bab 2

- **Gambar 2.2** Pasangan transformasi Fourier yang melibatkan distorsi (*warping*) dan rotasi data.
- **Gambar 2.3** Transformasi Fourier dari fungsi persegi panjang (*rectangular function*) dan fungsi **sinc**.
- **Gambar 2.7** Ilustrasi fenomena *aliasing* menggunakan dua laju sampling yang berbeda pada sinyal sinus 300 Hz.
- **Gambar 2.8** Pergeseran spektrum akibat proses sampling (sinyal real).
- **Gambar 2.9** Pergeseran spektrum akibat proses sampling (sinyal kompleks).
- **Gambar 2.11** Bentuk jendela (*window*) Kaiser untuk berbagai nilai $\beta$.
- **Gambar 2.12** Pelebaran pita utama (*main lobe broadening*) dan rasio sidelobe puncak dari berbagai jendela Kaiser.
- **Gambar 2.14** Ilustrasi interpolasi menggunakan fungsi **sinc**.
- **Gambar 2.15** Fungsi **sinc** yang diberi pembobotan menggunakan jendela Kaiser ($\beta = 2.5$).

### Bab 3

- **Gambar 3.1** Fase dan frekuensi sinyal pulsa *Linear Frequency Modulation* (LFM/Chirp).
- **Gambar 3.2** Spektrum frekuensi kompleks dari sinyal chirp LFM.
- **Gambar 3.3** Perubahan spektrum hasil DFT untuk berbagai nilai **TBP (*Time-Bandwidth Product*)**.
- **Gambar 3.4** Celah energi pada spektrum yang disebabkan oleh rasio *oversampling* $\alpha_{os}$.
- **Gambar 3.5** Pengukuran resolusi 3 dB pada keluaran *matched filter*.
- **Gambar 3.6** *Matched filtering* pada sinyal chirp LFM baseband.
- **Gambar 3.7** *Matched filtering* pada sinyal chirp LFM baseband dengan adanya derau (*noise*).
- **Gambar 3.8** *Matched filtering* pada sinyal chirp LFM non-baseband.
- **Gambar 3.9** Spektrum sinyal setelah proses *matched filtering*.
- **Gambar 3.10** Implementasi jendela Kaiser pada domain waktu dan domain frekuensi.
- **Gambar 3.11** *Matched filter* domain frekuensi yang dihasilkan menggunakan Metode 2.
- **Gambar 3.12** *Matched filter* domain frekuensi yang dihasilkan menggunakan Metode 3.
- **Gambar 3.13** Ilustrasi daerah pembuangan (*discard region*) dan nilai **TA** pada sinyal baseband melalui posisi target yang telah dikompresi.
- ~~**Gambar 3.14** Hubungan antara IRW, PSLR, ISLR, dan QPE saat $\beta = 2.5$ (hasilnya tidak sesuai).~~
- **Gambar 3.15** Kasus ketika posisi *sidelobe* berbeda tetapi respons impulsnya hampir sama.

### Bab 4

### Bab 5

- **Gambar 5.3** Aliasing pada arah azimuth akibat sampling sinyal azimuth menggunakan pulsa diskrit.
- **Gambar 5.4** Ambiguitas azimuth yang disebabkan oleh aliasing sinyal chirp azimuth.
- **Gambar 5.5** Frekuensi *Doppler centroid* untuk sudut *squint* nol dan tidak nol.
- **Gambar 5.12** Komponen linier dan kuadratik dari *Range Cell Migration (RCM)*.
- **Gambar 5.13** Perubahan lintasan target pada domain waktu azimuth dan domain frekuensi azimuth.
- **Gambar 5.16** Karakteristik domain waktu target titik tunggal pada sudut *squint* nol.
- **Gambar 5.17** Spektrum azimuth target titik tunggal pada sudut *squint* nol dengan *up-chirp*.
- **Gambar 5.18** Karakteristik domain waktu target titik tunggal pada sudut *squint* tidak nol.
- **Gambar 5.19** Spektrum azimuth target titik tunggal pada sudut *squint* tidak nol dengan *up-chirp*.

### Bab 6

- **Gambar 6.3** Sinyal radar mentah hasil simulasi multi-target pada kondisi sudut *squint* kecil.
- **Gambar 6.4** Hasil simulasi setelah kompresi jarak (*range compression*).
- **Gambar 6.5** Hasil simulasi setelah Transformasi Fourier Cepat (FFT) pada arah azimuth.
- **Gambar 6.8** Munculnya pasangan gema (*paired echoes*) akibat modulasi ketika koreksi *Range Cell Migration* tidak akurat.
- **Gambar 6.9** Hasil simulasi setelah koreksi *Range Cell Migration Correction (RCMC)*.
- **Gambar 6.12** Hasil simulasi setelah kompresi azimuth.
- **Gambar 6.16** Sinyal radar mentah hasil simulasi multi-target pada kondisi sudut *squint* besar.
- **Gambar 6.17** Implementasi presisi *Secondary Range Compression (SRC)* menggunakan Metode 3.

## Catatan

- File skrip interaktif **`.mlx`** digunakan sebagai media latihan.
- **`arrow.m`** adalah fungsi MATLAB yang sangat berguna untuk menggambar panah.
