import 'package:flutter/material.dart';
import 'package:kuispam_dilo/beranda.dart';
import 'main.dart';

class Persegi extends StatefulWidget {
  const Persegi({super.key});

  @override
  State<Persegi> createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  TextEditingController sisiController = TextEditingController();

  double luas = 0.0;
  double keliling = 0.0;

  void hitung() {
    double sisi = double.parse(sisiController.text);

    setState(() {
      luas = sisi * sisi;
      keliling = 4 * sisi;
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
                'Menghitung Luas & Keliling Persegi',
              ),

              // Input sisi
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                child: TextField(
                  controller: sisiController,
                  decoration: InputDecoration(
                    hintText: 'Masukkan sisi',
                    labelText: 'Sisi',
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

              // Hasil
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                child: Text(
                  'Luas = $luas',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                child: Text(
                  'Keliling = $keliling',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
    );
  }
}