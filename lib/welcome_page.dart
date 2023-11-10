import 'package:flutter/material.dart';
import 'package:kuispam_dilo/beranda.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.calculate_outlined,
              size: 100.0,
              color: Colors.white, // Warna ikon
            ),
            SizedBox(height: 20.0),
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Warna teks
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Beranda()),
                );
              },
              child: Text(
                'Start',
                style: TextStyle(fontSize: 18.0),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent, // Warna tombol
                onPrimary: Colors.white, // Warna teks tombol
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}