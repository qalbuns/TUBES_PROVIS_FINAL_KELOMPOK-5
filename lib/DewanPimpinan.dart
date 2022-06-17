import 'package:flutter/material.dart';
import 'RincianDewanPimpinan.dart';

class DewanPimpinan extends StatelessWidget {
  const DewanPimpinan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DewanPimpinan = <Map<String, String>>[
      {
        'label': 'Rektor',
        'contoh': ' ',
        'gambar': 'assets/Rektor1.png',
      },
      {
        'label': 'Wakil Rektor Bidang Pendidikan dan Kemahasiswaan',
        'contoh': '',
        'gambar': 'assets/WR1.png',
      },
      {
        'label': 'Wakil Rektor Bidang Sumber Daya dan Keuangan',
        'contoh': '',
        'gambar': 'assets/WR2.png',
      },
      {
        'label':
            'Wakil Rektor Bidang Perencanaan, Organisasi, Dan Sistem Informasi',
        'contoh': '',
        'gambar': 'assets/WR3.png',
      },
      {
        'label':
            'Wakil Rektor Bidang Riset Internasional, Kerja Sama, dan Usaha',
        'contoh': '',
        'gambar': 'assets/WR4.png',
      },
    ];

    return Center(
      child: ListView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            for (final fk in DewanPimpinan)
              Card(
                margin: const EdgeInsets.only(bottom: 16),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RincianDewanPimpinan(detailDewanPimpinan: fk)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                fk['label'] ?? 'null',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                fk['contoh'] ?? 'null',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          fk['gambar'] ?? 'null',
                          width: 240,
                          height: 240,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ]),
    );
  }
}
