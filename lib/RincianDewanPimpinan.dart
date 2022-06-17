import 'package:flutter/material.dart';

class RincianDewanPimpinan extends StatelessWidget {
  final Map<String, String> detailDewanPimpinan;

  const RincianDewanPimpinan({Key? key, required this.detailDewanPimpinan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DewanPimpinan = {
      'Rektor': {
        'Nama': 'Prof. Dr. M. Solehuddin, M.Pd., M.A.',
        'Pendidikan Terakhir': ['S-3'],
        'Riwayat Pekerjaan':
            'Ketua Prodi Pendidikan Dasar Sekolah Pascasarjana UPI, Asisten Direktur 1 (Pengganti Antar Waktu) Sekolah Pascasarjana UPI, Asisten Direktur 1 Sekolah Pascasarjana UPI, Sekretaris Eksekutif UPI, Wakil Rektor Bidang Akademik dan Kemahasiswaan (Pengganti Antar Waktu) UPI',
        'Riwayat Pendidikan':
            'S1 Psikologi Pendidikan dan Bimbingan IKIP Bandung, S2 Bimbingan Konseling IKIP Bandung, S2 Early Childhood Education Ohio State University, S3 Bimbingan Konseling UPI',
      },
      'Wakil Rektor Bidang Pendidikan dan Kemahasiswaan': {
        'Nama': 'Prof. Dr. Didi Sukyadi, M.A​',
        'Pendidikan Terakhir': ['S-3'],
        'Riwayat Pekerjaan': '-',
        'Riwayat Pendidikan':
            'S1 Pendidikan Bahasa Inggris IKIP Bandung, S2 Primary Education University of London, S3 Ilmu Linguistik UI',
      },
      'Wakil Rektor Bidang Sumber Daya dan Keuangan': {
        'Nama': 'Prof. Dr. H. Agus Rahayu, M.P​',
        'Pendidikan Terakhir': ['S-3'],
        'Riwayat Pekerjaan': '-',
        'Riwayat Pendidikan':
            'S1 Pendidikan Ekonomi Perusahaan IKIP Bandung, S2 Ekonomi Perusahaan Pertanian Unpad, S3 Ekonomi Manajemen Unpad',
      },
      'Wakil Rektor Bidang Perencanaan, Organisasi, dan Sistem Informasi': {
        'Nama': 'Prof. Dr. Bunyamin Maftuh, M.Pd., M.A',
        'Pendidikan Terakhir': ['S-3'],
        'Riwayat Pekerjaan': '-',
        'Riwayat Pendidikan':
            'S1 Pendidikan Moral Pancasila dan Kewarganegaraan IKIP Bandung, S2 Pendidikan Umum IKIP Bandung, S2 Early & Middle Childhood Education Ohio State University Columbus, S3 Pendidikan IPS UPI',
      },
      'Wakil Rektor Bidang Riset Internasional, Kerja Sama, dan Usaha': {
        'Nama': 'Prof. Dr. H. Adang Suherman, M.A',
        'Pendidikan Terakhir': ['S-3'],
        'Riwayat Pekerjaan': '-',
        'Riwayat Pendidikan':
            'S1 Pendidikan Olahraga Kesehatan & Rekreasi IKIP Bandung, S2 Healthphysical Education & Recreation Ohio State University, S3 Pengembangan Kurikulum UPI',
      },
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Rincian Dewan Pimpinan'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.network(
                detailDewanPimpinan['gambar']!,
                width: 200,
                height: 200,
              ),
            ),
            ListTile(
              title: const Text('Jabatan'),
              subtitle: Text(detailDewanPimpinan['label'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Nama'),
              subtitle: Text(
                  DewanPimpinan[(detailDewanPimpinan['label'] as String)]
                      ?['Nama'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Pendidikan Terakhir'),
              subtitle: Text(
                  (DewanPimpinan[(detailDewanPimpinan['label'] as String)]
                          ?['Pendidikan Terakhir'] as List)
                      .join(', ')),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Riwayat Pekerjaan'),
              subtitle: Text(
                  DewanPimpinan[(detailDewanPimpinan['label'] as String)]
                      ?['Riwayat Pekerjaan'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Riwayat Pendidikan'),
              subtitle: Text(
                  DewanPimpinan[(detailDewanPimpinan['label'] as String)]
                      ?['Riwayat Pendidikan'] as String),
              onTap: () {},
            ),
            const Divider(),
          ],
        ));
  }
}
