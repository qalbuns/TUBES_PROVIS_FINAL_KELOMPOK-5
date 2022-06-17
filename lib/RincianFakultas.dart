import 'package:flutter/material.dart';

class RincianFakultas extends StatelessWidget {
  final Map<String, String> detailFakultas;

  const RincianFakultas({Key? key, required this.detailFakultas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fakultas = {
      'Fakultas Ilmu Pendidikan (FIP)': {
        'Dekan': 'Dr. Rudi Susilana, M.Si.',
        'Prodi': [
          'Administrasi Pendidikan',
          'Teknologi Pendidikan',
          'Perpustakaan dan Sains Informasi',
          'Pedagogik',
          'Pendidikan Masyarakat',
          'Pendidikan Khusus',
          'Bimbingan & Konseling',
          'Psikologi',
          'Pendidikan Guru Sekolah Dasar',
          'Pendidikan Guru Pendidikan Anak Usia Dini'
        ],
        'Tentang':
            'Kelahiran Fakultas Ilmu Pendidikan (FIP) tidak bisa dipisahkan dari perjalanan sejarah Universitas Pendidikan Indonesia (UPI) secara keseluruhan. Universitas Pendidikan Indonesia didirikan pada tanggal 20 Oktober 1954 di Bandung, diresmikan oleh Menteri Pendidikan Pengajaran Mr. Muhammad Yamin. Semula bernama Perguruan Tinggi Pendidikan Guru (PTPG). Seiring dengan berdirinya Universitas Padjadjaran (UNPAD), pada tanggal 25 November 1958 PTPG diintegrasikan menjadi fakultas utama Universitas Padjadjaran dengan nama Fakultas Keguruan dan Ilmu Pendidikan (FKIP). Pada tanggal 1 Mei 1963 dikeluarkan Keputusan Presiden Nomor 1 tahun 1963, yang melebur FKIP dan IPG menjadi Institut Keguruan dan Ilmu Pendidikan (IKIP) sebagai satu satunya lembaga pendidikan guru tingkat universitas.',
        'Jumlah Dosen dan Staff': '999',
        'Jumlah Mahasiswa': '999',
      },
      'Fakultas Pendidikan Bahasa Dan Sastra (FPBS)': {
        'Dekan': 'Prof. Dr. Tri Indri Hardini, M.Pd.',
        'Prodi': [
          'Pendidikan Bahasa dan Sastra Indonesia',
          'Bahasa dan Sastra Indonesia',
          'Pendidikan Bahasa Sunda',
          'Bahasa dan Sastra Inggris',
          'Pendidikan Bahasa Arab',
          'Pendidikan Bahasa Jerman',
          'Pendidikan Bahasa Jepang',
          'Pendidikan Bahasa Perancis',
          'Pendidikan Bahasa Korea'
        ],
        'Tentang':
            'Dengan diberlakukannya Peraturan Pemerintah No. 5 tahun 1980 dan dikeluarkannya Keputusan Presiden RI No. 48 tahun 1982, Fakultas Keguruan Sastra dan Seni (FKSS) diubah menjadi Fakultas Pendidikan Bahasa dan Seni (FPBS) sebagaimana tertuang dalam Surat Keputusan Rektor IKIP Bandung No. 302/PT.25.R/E/1983 tanggal 24 Januari 1983. Fakultas ini membina 6 (enam) Jurusan dan 8 (delapan) Program Pendidikan. Secara bertahap jenjang D3, D2, dan D1 akhirnya ditutup sehingga pada tahun 1991 FPBS hanya mengelola jenjang S1.',
        'Jumlah Dosen dan Staff': '999',
        'Jumlah Mahasiswa': '999',
      },
      'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam (FPMIPA)': {
        'Dekan': 'Prof. Dr. Tatang Herman, M.Ed.',
        'Prodi': [
          'Pendidikan Ilmu Komputer',
          'Pendidikan Biologi',
          'Pendidikan Fisika',
          'Pendidikan Kimia',
          'Matematika',
          'Ilmu Komputer',
          'Biologi',
          'Fisika',
          'Kimia',
          'Matematika',
          'IPSE'
        ],
        'Tentang':
            'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam (FPMIPA) merupakan unsur pelaksana akademik yang bertugas mengkoordinir pelaksanaan kegiatan akademik di bidang pendidikan Matematika dan IPA. FPMIPA merupakan salah satu dari delapan fakultas di UPI yang bertugas mempersiapkan guru MIPA dan ilmuwan MIPA yang dituntut untuk menghasilkan lulusan yang memiliki daya saing tinggi di era globalisasi. FPMIPA pertama kali didirikan dengan nama Jurusan Ilmu Pengetahuan Alam pada tahun 1954, Fakultas Keguruan Ilmu Eksakta (FKIE) pada tahun 1963, dan diubah menjadi FPMIPA pada tahun 1983.',
        'Jumlah Dosen dan Staff': '999',
        'Jumlah Mahasiswa': '999',
      },
      'Fakultas Pendidikan Ilmu Pengetahuan Sosial (FPIPS)': {
        'Dekan': 'Dr. Agus Mulyana M.Hum',
        'Prodi': [
          'Keguruan & Pendidikan',
          'Sejarah',
          'Geografi',
          'Pariwisata',
          'Ilmu Agama Islam',
          'Ilmu Komunikasi',
          'Sosiologi',
          'Perhotelan',
          'Manajemen Pemasaran',
        ],
        'Tentang':
            'Fakultas Pendidikan Ilmu Pengetahuan Sosial (FPIPS) merupakan unsur pelaksana akademik yang bertugas mengkoordinir pelaksanaan kegiatan akademik di bidang pendidikan IPS. FPIPS merupakan salah satu dari delapan fakultas di UPI yang bertugas mempersiapkan guru MIPA dan ilmuwan MIPA yang dituntut untuk menghasilkan lulusan yang memiliki daya saing tinggi di era globalisasi. FPMIPA pertama kali didirikan dengan nama Jurusan Ilmu Pengetahuan Alam pada tahun 1954, Fakultas Keguruan Ilmu Eksakta (FKIE) pada tahun 1963, dan diubah menjadi FPMIPA pada tahun 1983.',
        'Jumlah Dosen dan Staff': '999',
        'Jumlah Mahasiswa': '999',
      },
      'Fakultas Pendidikan Bahasa Dan Sastra (FPBS)': {
        'Dekan': 'Prof. Dr. Tri Indri Hardini, M.Pd.',
        'Prodi': [
          'Pendidikan Bahasa Indonesia',
          'Bahasa dan Sastra Indonesia',
          'Pendidikan Bahasa Inggris',
          'Bahasa dan Sastra Inggris',
          'Pendidikan Bahasa Sunda',
          'Pendidikan Bahasa Jepang',
          'Pendidikan Bahasa Jerman',
          'Pendidikan Bahasa Perancis',
          'Pendidikan Bahasa Arab',
          'Pendidikan Bahasa Korea'
        ],
        'Tentang':
            'Fakultas Pendidikan Bahasa Dan Sastra (FPBS) menjadi lembaga yang unggul dalam menyelenggarakan program pendidikan bahasa dan sastra dengan manajemen berstandar internasional pada tahun 2025 .',
        'Jumlah Dosen dan Staff': '999',
        'Jumlah Mahasiswa': '999',
      },
      'Fakultas Pendidikan Teknologi Dan Kejuruan (FPTK)': {
        'Dekan': 'Dr. Iwa Kuntadi, M.Pd.',
        'Prodi': [
          'Pendidikan Teknik Arsitektur',
          'Pendidikan Teknik Bangunan',
          'Pendidikan Teknik Elektro',
          'Pendidikan Teknik Mesin',
          'Pendidikan Kesejahteraan Keluarga',
          'Pendidikan Tata Boga',
          'Pendidikan Tata Busana',
          'Pendidikan Teknologi Agroindustri',
          'Magister Arsitektur',
          'Pendidikan Teknik Otomotif',
          'Teknik Logistik S-1',
          'Pendidikan Teknik Otomasi Industri dan Robotika',
          'Teknik Elektro',
          'Arsitektur',
          'Teknik Sipil'
        ],
        'Tentang':
            'Fakultas Pendidikan Teknologi Dan Kejuruan (FPTK) menjadi Fakultas Pelopor dan Unggul dalam penyelenggaraan Pendidikan Teknologi dan Kejuruan pada tahun 2025 di Tingkat regional Asia.',
        'Jumlah Dosen dan Staff': '999',
        'Jumlah Mahasiswa': '999',
      },
      'Fakultas Pendidikan Ekonomi dan Bisnis (FPEB)': {
        'Dekan': 'Prof. Dr. H. Eeng Ahman, MS.',
        'Prodi': [
          'Ilmu Ekonomi dan Keuangan Islam',
          'Manajemen',
          'Akuntansi',
          'Pendidikan Ekonomi',
          'Pendidikan Manajemen Perkantoran',
          'Pendidikan Bisnis',
          'Pendidikan Akuntansi',
          'Magister Ilmu Akuntansi',
          'Magister Pendidikan Ekonomi',
          'Magister Manajemen',
          'Doktor Pendidikan Ekonomi',
          'Doktor Ilmu Manajemen'
        ],
        'Tentang':
            'Fakultas Pendidikan Ekonomi dan Bisnis (FPEB) menjadi Fakultas Pelopor dan Unggul dalam Penyelenggaraan Pendidikan Ekonomi dan Bisnis berbasis Syariah di Indonesia yang Direkognisi Secara Internasional Pada Tahun 2025.',
        'Jumlah Dosen dan Staff': '999',
        'Jumlah Mahasiswa': '999',
      },
      'Fakultas Pendidikan Seni dan Desain (FPSD)': {
        'Dekan': 'Dr. Zakarias S Soeteja, M.Sn.',
        'Prodi': [
          'Pendidikan Seni Tari',
          'Pendidikan Seni Rupa',
          'Musik',
          'Film dan Televisi',
          'Desain Komunikasi Visual'
        ],
        'Tentang':
            'Fakultas Pendidikan Seni dan Desain (FPSD) menjadi fakultas pelopor dan unggul dalam disiplin ilmu pendidikan seni dan desain serta pendidikan disiplin ilmu seni dan desain di Asia.',
        'Jumlah Dosen dan Staff': '999',
        'Jumlah Mahasiswa': '999',
      },
      'Sekolah PascaSarjana': {
        'Dekan':
            'Prof. Dr. H. Syihabuddin, M. Pd., Dr. Eng. Agus Setiawan, M.Si., Prof. Dr. Hj. Ratih Hurriyati, M.P',
        'Prodi': [
          'Pendidikan Olahraga (S2)',
          'Pendidikan Olahraga (S3)',
          'Pendidikan Seni (S2)',
          'Pendidikan Seni (S3)',
          'Pendidikan Umum dan Karakter (S2)',
          'Pendidikan Umum dan Karakter (S3)',
          'Linguistik (S2)',
          'Linguistik (S3)',
          'Pendidikan Dasar (S2)',
          'Pendidikan Dasar (S3)',
          'Pendidikan Teknologi dan Kejuruan (S2)',
          'Pendidikan Teknologi dan Kejuruan (S3)',
          'Psikologi Pendidikan (S2)',
          'Program Profesi Guru (S2)',
          'Pariwisata (S2)',
          'Manajemen Perkantoran (S2)',
          'Pendidikan Bahasa Indonesia Penutur Asing (BIPA) (S2)',
        ],
        'Tentang':
            'Sekolah PascaSarjana memperoleh Pengakuan Internasional dalam Penyelenggaraan Pendidikan Pascasarjana Bidang Ilmu Pendidikan, Pendidikan Disiplin Ilmu dan Pendidikan Profesi di Tingkat Asia pada Tahun 2025.',
        'Jumlah Dosen dan Staff': '999',
        'Jumlah Mahasiswa': '999',
      }
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Rincian Fakultas'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.network(
                detailFakultas['gambar']!,
                width: 200,
                height: 200,
              ),
            ),
            ListTile(
              title: const Text('Nama'),
              subtitle: Text(detailFakultas['label'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Dekan'),
              subtitle: Text(fakultas[(detailFakultas['label'] as String)]
                  ?['Dekan'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Prodi'),
              subtitle: Text((fakultas[(detailFakultas['label'] as String)]
                      ?['Prodi'] as List)
                  .join(', ')),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Tentang'),
              subtitle: Text(fakultas[(detailFakultas['label'] as String)]
                  ?['Tentang'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Jumlah Dosen dan Staff'),
              subtitle: Text(fakultas[(detailFakultas['label'] as String)]
                  ?['Jumlah Dosen dan Staff'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Jumlah Mahasiswa'),
              subtitle: Text(fakultas[(detailFakultas['label'] as String)]
                  ?['Jumlah Mahasiswa'] as String),
              onTap: () {},
            ),
            const Divider(),
          ],
        ));
  }
}
