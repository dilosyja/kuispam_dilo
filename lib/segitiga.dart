import 'package:flutter/material.dart';
import 'package:kuispam_dilo/beranda.dart';

class Segitiga extends StatefulWidget {
  const Segitiga({Key? key}) : super(key: key);

  @override
  State<Segitiga> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Segitiga> {
  TextEditingController alasController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();
  TextEditingController sisi1Controller = TextEditingController();
  TextEditingController sisi2Controller = TextEditingController();

  double luas = 0.0;
  double keliling = 0.0;

  void hitung() {
    double alas = double.parse(alasController.text);
    double tinggi = double.parse(tinggiController.text);
    double sisi1 = double.parse(sisi1Controller.text);
    double sisi2 = double.parse(sisi2Controller.text);

    setState(() {
      luas = 0.5 * alas * tinggi;
      keliling = alas + sisi1 + sisi2;
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
              'Menghitung Luas & Keliling Segitiga',
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              width: 280,
              child: TextField(
                controller: alasController,
                decoration: InputDecoration(
                  hintText: 'Masukkan alas',
                  labelText: 'alas',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            // Input sisi 1
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 280,
              child: TextField(
                controller: sisi1Controller,
                decoration: InputDecoration(
                  hintText: 'Masukkan sisi 1',
                  labelText: 'Sisi 1',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            // Input sisi 2
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 280,
              child: TextField(
                controller: sisi2Controller,
                decoration: InputDecoration(
                  hintText: 'Masukkan sisi 2',
                  labelText: 'Sisi 2',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            // Input tinggi
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 280,
              child: TextField(
                controller: tinggiController,
                decoration: InputDecoration(
                  hintText: 'Masukkan tinggi',
                  labelText: 'Tinggi',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            // Button
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 280,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  hitung();
                },
                child: Text(
                  'Hitung',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),

            // Output
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