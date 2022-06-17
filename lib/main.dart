import 'package:flutter/material.dart';
import 'package:info_upi/DewanPimpinan.dart';
import 'Berita.dart';
import 'Fakultas.dart';
import 'Fasilitas.dart';
import 'DewanPimpinan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int idx = 0; //index yang aktif
  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.density_small_rounded),
        title: Container(
          width: 40,
          child: Image.asset('assets/UPI.png'),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.green, Colors.blue])),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
      body: case2(idx),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          selectedItemColor: Colors.red,
          unselectedItemColor: Color.fromARGB(248, 183, 177, 176),
          onTap: onItemTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper), label: 'Berita'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Fakultas'),
            BottomNavigationBarItem(
                icon: Icon(Icons.school), label: "Fasilitas"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: "Dewan Pimpinan"),
          ]),
    ));
  }

  case2(int idx) {
    switch (idx) {
      case 0:
        {
          return const Berita();
        }

      case 1:
        {
          return const Fakultas();
        }

      case 2:
        {
          return const Fasilitas();
        }

      case 3:
        {
          return const DewanPimpinan();
        }
    }
  }
}
