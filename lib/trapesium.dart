import 'package:flutter/material.dart';
import 'package:kuispam_dilo/beranda.dart';
import '';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  TextEditingController sisi1Controller = TextEditingController();
  TextEditingController sisi2Controller = TextEditingController();
  TextEditingController tinggiController = TextEditingController();

  double luas = 0.0;
  double keliling = 0.0;

  void hitung() {
    double sisi1 = double.parse(sisi1Controller.text);
    double sisi2 = double.parse(sisi2Controller.text);
    double tinggi = double.parse(tinggiController.text);

    setState(() {
      luas = 0.5 * (sisi1 + sisi2) * tinggi;
      keliling = sisi1 + sisi2 + (2 * tinggi);
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
              'Menghitung Luas & Keliling Trapesium',
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