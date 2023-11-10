import 'package:flutter/material.dart';
import 'package:kuispam_dilo/beranda.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 1;
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
        title: Text('Panduan Penggunaan Aplikasi'),
        backgroundColor: Colors.lightGreenAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 200),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/dilo.jpg'),
                  SizedBox(height: 10),
                  Text(
                    'Data Diri',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text('Nama : Wan Dilo Syuja Sherlieno'),
                  SizedBox(height: 10),
                  Text('NIM : 124210052'),
                  SizedBox(height: 10),
                  Text('Tempat Tanggal Lahir : Bandung, 17 April 2003'),
                  SizedBox(height: 10),
                  Text('Hobi : Bernyanyi'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFD5FC01),
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Beranda()),
            );
          }
          else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          }
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
              backgroundColor: Color(0xFFD5FC01)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Color(0xFFD5FC01)
          ),
        ],
      ),
    );
  }
}