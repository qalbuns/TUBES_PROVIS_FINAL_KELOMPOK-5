import 'package:flutter/material.dart';

class RincianFasilitas extends StatelessWidget {
  final Map<String, String> detailFasilitas;

  const RincianFasilitas({Key? key, required this.detailFasilitas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fasilitas = {
      'Ruang Kuliah': {
        'Deskripsi':
            'Ruang Kuliah berjumlah 123 kelas yang dipergunakan mulai pukul 07.00 - 18.00 WIB. Di samping ruang kuliah juga terdapat sekitar 70 ruang laboratorium yang tersebar di delapan fakultas, Sekolah Pascasarjana dan lima kampus daerah yang ada di UPI.',
      },
      'Perpustakaan': {
        'Deskripsi':
            'Perpustakaan Universitas Pendidikan Indonesia (UPI) lahir pada tanggal 20 Oktober 1954 dibawah naungan Perguruan Tinggi Pendidikan Guru (PTPG), di Hotel Homann Jl. Asia Afrika Bandung tahun 1954. Perpustakaan pada tahun 1954 memiliki koleksi berjumlah 8.000 eksemplar untuk melayani kebutuhan 214 mahasiswa yang tergabung kedalam 7 jurusan. Lokasinya yang pada waktu itu berada di hotel dirasa kurang sesuai untuk kegiatan akademik, sehingga lokasinya dipindahkan ke PPI, Lembang, dengan luas ruangan 75 m2. Karena dirasakan jarak lokasi perpustakaan dengan lokasi Kampus Bumi Siliwangi terlalu jauh, maka perpustakaan dipindahkan ke Villa Isola, dengan kondisi luas ruangan 195 m2. Pada waktu itu perpustakaan memiliki koleksi berjumlah sekitar 25.000 judul buku.',
      },
      'Balai Bahasa': {
        'Deskripsi':
            'Balai Bahasa UPI adalah salah satu balai bahasa tertua di Indonesia. Didirikan oleh Direktorat Jenderal Pendidikan Tinggi pada awal tahun 1970-an dengan nama , Pusat Bahasa UPI telah berkembang menjadi salah satu pusat bahasa universitas terkemuka di tanah air. Manajemen progresifnya berakar pada tradisi profesional panjang yang dipegang oleh kepemimpinannya, yang hingga saat ini secara berturut-turut dipegang oleh beberapa nama paling dihormati di negara ini dalam pendidikan bahasa',
      },
      'Dormitory': {
        'Deskripsi':
            'Universitas menyediakan beberapa fasilitas pendukung bagi mahasiswanya untuk mendapatkan kenyamanan belajar dan tinggal di kampus',
      },
      'Kolam Renang': {
        'Deskripsi':
            'Kolam renang UPI juga merupakan kolam yang mempunyai standard nasional untuk keperluan pendidikan, pembinaan atlit renang Jawa Barat dan perlombaan cabang renang tingkat nasional. Kolam ini juga dibuka untuk umun.',
      },
      'Masjid Al Furqan': {
        'Deskripsi':
            'Masjid Al-Furqan yang merupakan masjid Kampus Universitas Pendidikan Indonesia (UPI) Bandung, Jawa Barat adalah salah satu dari sedikit masjid besar yang dikelola oleh perguruan tinggi. Memang tidak begitu banyak kampus di Indonesia yang memiliki masjid besar.',
      },
      'Isola Resort': {
        'Deskripsi':
            'Isola Resort adalah Pusat Pelatihan Program Pariwisata di Universitas Pendidikan Indonesia. ini adalah tempat terbaik untuk pertemuan dan acara perusahaan, serta tempat tinggal keluarga di Bandung, berkat lokasinya yang terpencil yang menjauhkan orang dari kebisingan lalu lintas yang padat, polusi asap mobil, dan udara segar yang mengganggu.',
      },
      'Balai Pertemuan': {
        'Deskripsi':
            'Sebagai sarana yang menunjang berbagai kegiatan dalam ruangan',
      },
      'Stadion': {
        'Deskripsi':
            'Stadion merupakan salah satu sarana yang dikelola sepenuhnya oleh UPT Pusat Olahraga Universitas Pendidikan Indonesia. Stadion biasa digunakan untuk kepentingan perkulian seperti sepak bola dan atletik, kegiatan olahraga, maupun acara acara kemahasiswaan.',
      },
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Rincian Fasilitas'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.network(
                detailFasilitas['gambar']!,
                width: 200,
                height: 200,
              ),
            ),
            ListTile(
              title: const Text('Nama'),
              subtitle: Text(detailFasilitas['label'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Deskripsi'),
              subtitle: Text(fasilitas[(detailFasilitas['label'] as String)]
                  ?['Deskripsi'] as String),
              onTap: () {},
            ),
            const Divider(),
          ],
        ));
  }
}
