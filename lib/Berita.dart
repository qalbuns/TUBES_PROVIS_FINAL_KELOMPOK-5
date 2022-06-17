import 'package:flutter/material.dart';
import 'RincianBerita.dart';

class Berita extends StatelessWidget {
  const Berita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Berita = <Map<String, String>>[
      {
        'label': 'DKV Program Developing Creative Industries in West Java',
        'nama': ' ',
        'gambar': 'assets/Berita1.png',
      },
      {
        'label': 'Start to Learn and Master Soft Skills as a Student',
        'nama': ' ',
        'gambar': 'assets/Berita2.png',
      },
      {
        'label': 'A Journey of Your Life 2021',
        'nama': ' ',
        'gambar': 'assets/Berita3.png',
      },
      {
        'label': 'Certified Secure Computer User',
        'nama': ' ',
        'gambar': 'assets/Berita4.png',
      },
      {
        'label': 'How to Start Career in UI/UX Field',
        'nama': ' ',
        'gambar': 'assets/Berita5.png',
      },
    ];

    return Center(
      child: ListView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            for (final fk in Berita)
              Card(
                margin: const EdgeInsets.only(bottom: 16),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RincianBerita(detailBerita: fk)));
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
                                fk['nama'] ?? 'null',
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
