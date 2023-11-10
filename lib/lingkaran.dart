import 'package:flutter/material.dart';
import 'package:kuispam_dilo/beranda.dart';
import 'package:kuispam_dilo/profile.dart';


class Lingkaran extends StatefulWidget {
  const Lingkaran({super.key});

  @override
  State<Lingkaran> createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  int _currentIndex = 0;
  TextEditingController jariController = TextEditingController();

  double luas = 0.0;
  double keliling = 0.0;

  void hitung() {
    double jari = double.parse(jariController.text);

    setState(() {
      luas = 3.14 * jari * jari;
      keliling = 2 * 3.14 * jari;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.door_back_door_outlined),
              color: Colors.white,
              onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Beranda()),
                );
              }
          ),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Menghitung Luas & Keliling Lingkaran',
              ),

              // Input jari-jari
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                child: TextField(
                  controller: jariController,
                  decoration: InputDecoration(
                    hintText: 'Masukkan jari-jari',
                    labelText: 'Jari-jari',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              // Button
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                child: ElevatedButton(
                  onPressed: hitung,
                  child: Text('Hitung'),
                ),
              ),

              // Output luas
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                child: Text(
                  'Luas = ' + luas.toStringAsFixed(1),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                child: Text(
                  'Keliling = ' + keliling.toStringAsFixed(1),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
    );
  }
}