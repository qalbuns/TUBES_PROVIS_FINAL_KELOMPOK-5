import 'package:flutter/material.dart';
import 'RincianFakultas.dart';

class Fakultas extends StatelessWidget {
  const Fakultas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fakultas = <Map<String, String>>[
      {
        'label': 'Fakultas Ilmu Pendidikan (FIP)',
        'nama': ' ',
        'gambar': 'assets/FIP.png',
      },
      {
        'label': 'Fakultas Pendidikan Ilmu Pengetahuan Sosial (FPIPS)',
        'nama': ' ',
        'gambar': 'assets/FPIPS.png',
      },
      {
        'label': 'Fakultas Pendidikan Bahasa Dan Sastra (FPBS)',
        'nama': '',
        'gambar': 'assets/FPBS.png',
      },
      {
        'label':
            'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam (FPMIPA)',
        'nama': '',
        'gambar': 'assets/FPMIPA.png',
      },
      {
        'label': 'Fakultas Pendidikan Teknologi Dan Kejuruan (FPTK)',
        'nama': ' ',
        'gambar': 'assets/FPTK.png',
      },
      {
        'label': 'Fakultas Pendidikan Ekonomi dan Bisnis (FPEB)',
        'nama': ' ',
        'gambar': 'assets/FPEB.png',
      },
      {
        'label': 'Fakultas Pendidikan Seni dan Desain (FPSD)',
        'nama': ' ',
        'gambar': 'assets/FPSD.png',
      },
      {
        'label': 'Sekolah PascaSarjana',
        'nama': ' ',
        'gambar': 'assets/SekolahPascaSarjana.png',
      },
    ];

    return Center(
      child: ListView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            for (final fk in fakultas)
              Card(
                margin: const EdgeInsets.only(bottom: 16),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RincianFakultas(detailFakultas: fk)));
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
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                fk['nama'] ?? 'null',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          fk['gambar'] ?? 'null',
                          width: 120,
                          height: 120,
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
