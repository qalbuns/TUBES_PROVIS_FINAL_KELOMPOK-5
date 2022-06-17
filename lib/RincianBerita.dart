import 'package:flutter/material.dart';

class RincianBerita extends StatelessWidget {
  final Map<String, String> detailBerita;

  const RincianBerita({Key? key, required this.detailBerita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Berita = {
      'DKV Program Developing Creative Industries in West Java': {
        'Penerbit': 'Humas UPI',
        'Tanggal Terbit': ['22/02/2022'],
        'Isi Berita':
            'The Visual Communication Design (DKV) Study Program FPSD-UPI in collaboration with the Sukabumi City Government held a research project and City Branding development, the Tourism Industry and MSME Products which was attended by MSME actors, tourism industry managers, Sukabumi City DISPORAPAR, DKV lecturer team and students. With the theme “Implementation of Case Method & Team Base Project”, this event was focused on efforts to develop various entities through a visual communication design approach (15/2/2022).',
      },
      'Start to Learn and Master Soft Skills as a Student': {
        'Penerbit': 'Humas UPI',
        'Tanggal Terbit': ['28/12/2021'],
        'Isi Berita':
            'Most surveys conducted by various study programs at Universitas Pendidikan Indonesia show that corporations and government institutions demand that UPI alumni should possess soft skills needed to be able to best fit in with the professional environment once they enter employment, apart from the hard skills that they have studied formally on campus. Soft skills constitute indirect abilities within individuals that relate to communication, social, and adaptation. For instance, a marketer has the responsibility to attract customer interest. Hence, Soft skills are necessary for the professional setting especially, besides intellective skills, or even they are not just necessary, but very important. Here is how soft skills work in business and academic settings.',
      },
      'A Journey of Your Life 2021': {
        'Penerbit': 'Humas UPI',
        'Tanggal Terbit': ['28/12/2021'],
        'Isi Berita':
            'On Saturday, August 25, 2021, all new students from the English Department attended Kaderisasi Angkatan Baru  (KAB)’s fourth agenda, A Journey of Your Life.  KAB is an annual activity for new English Department students that must be attended because it gives a great deal of information and knowledge about college life. This activity is conducted via Zoom Meeting. This event drew roughly 200 new students and more than 100 committee members. Due to the COVID pandemic, KAB will be held online for the second time. The implementation was not done online two years ago for the Class of 2019. The Geget Winda Building is the place where KAB 2019 is located. We are hoping that this pandemic will be over soon, so in the next year, KAB will be held on campus rather than online.',
      },
      'Certified Secure Computer User': {
        'Penerbit': 'Depilkom UPI ',
        'Tanggal Terbit': ['07/03/2022'],
        'Isi Berita':
            'The aim of the CSCU training program is to equip individuals with the knowledge and skills necessary to protect their information assets. This class will immerse students in an interactive environment where they will gain a fundamental understanding of various computer and network security threats such as identity theft, credit card fraud, online banking phishing scams, viruses and backdoors, fake emails, sex offenders lurking online, loss of confidential information, hacking attacks, and social engineering. More importantly, the skills learned from the classroom help students take the necessary steps to reduce their exposure to safety.',
      },
      'How to Start Career in UI/UX Field': {
        'Penerbit': 'Depilkom UPI ',
        'Tanggal Terbit': ['01/03/2022'],
        'Isi Berita':
            'The Google Developer Student Clubs (GDSC) Chapter of Universitas Pendidikan Indonesia once again held a talk show which was open for public. Taking the theme of UI/UX, this talk show is entitled “How to Start Career in UI/UX Field” and invites 3 speakers who are very experienced in the field of UI/UX including Ahmad Banyu Rachman (UX Engineer at Blibli), Endah Nursalehah (UX) Researcher at Jabar Digital Services), and Mohammad Army (Lead UX Designer at OnlinePajak).',
      },
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Rincian Berita'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.network(
                detailBerita['gambar']!,
                width: 200,
                height: 200,
              ),
            ),
            ListTile(
              title: const Text('Judul Berita'),
              subtitle: Text(detailBerita['label'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Penerbit'),
              subtitle: Text(Berita[(detailBerita['label'] as String)]
                  ?['Penerbit'] as String),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Tanggal Terbit'),
              subtitle: Text((Berita[(detailBerita['label'] as String)]
                      ?['Tanggal Terbit'] as List)
                  .join(', ')),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Isi Berita'),
              subtitle: Text(Berita[(detailBerita['label'] as String)]
                  ?['Isi Berita'] as String),
              onTap: () {},
            ),
            const Divider(),
          ],
        ));
  }
}
