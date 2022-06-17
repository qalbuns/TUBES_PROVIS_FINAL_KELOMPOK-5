import 'package:flutter/material.dart';
import 'RincianFasilitas.dart';

class Fasilitas extends StatelessWidget {
  const Fasilitas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final fasilitas = <Map<String, String>>[
      {
        'label': 'Ruang Kuliah',
        'contoh': ' ',
        'gambar': 'assets/RuangKuliah.png',
      },
      {
        'label': 'Perpustakaan',
        'contoh': ' ',
        'gambar': 'assets/Perpustakaan.png',
      },
      {
        'label': 'Balai Bahasa',
        'contoh': ' ',
        'gambar': 'assets/BalaiBahasa.png',
      },
      {
        'label': 'Dormitory',
        'contoh': ' ',
        'gambar': 'assets/Dormitory.png',
      },
      {
        'label': 'Masjid Al Furqan',
        'contoh': ' ',
        'gambar': 'assets/Masjid.png',
      },
      {
        'label': 'Isola Resort',
        'contoh': ' ',
        'gambar': 'assets/IsolaResort.png',
      },
      {
        'label': 'Balai Pertemuan',
        'contoh': ' ',
        'gambar': 'assets/BalaiPertemuan.png',
      },
      {
        'label': 'Stadion',
        'contoh': ' ',
        'gambar': 'assets/Stadion.png',
      },
      {
        'label': 'Kolam Renang',
        'contoh': ' ',
        'gambar': 'assets/KolamRenang.png',
      },
    ];

    return Center(
      child: ListView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            for (final fk in fasilitas)
              Card(
                margin: const EdgeInsets.only(bottom: 16),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RincianFasilitas(detailFasilitas: fk)));
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
