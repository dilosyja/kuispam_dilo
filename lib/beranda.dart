import 'package:flutter/material.dart';
import 'package:kuispam_dilo/lingkaran.dart';
import 'package:kuispam_dilo/persegi.dart';
import 'package:kuispam_dilo/profile.dart';
import 'package:kuispam_dilo/segitiga.dart';
import 'package:kuispam_dilo/trapesium.dart';
import 'package:kuispam_dilo/welcome_page.dart';

class Beranda extends StatefulWidget {
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.door_back_door_outlined),
            color: Colors.white,
            onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );
            }
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/fitness_bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Konten di tengah
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Fitur 1
                FeatureWidget(
                  icon: Icons.circle_rounded,
                  title : 'Lingkaran',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Lingkaran()),
                    );
                  },
                ),
                // Fitur 2
                SizedBox(height: 10),
                FeatureWidget(
                  icon: Icons.rectangle,
                  title: 'Persegi',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Persegi()),
                    );
                  },
                ),
                // Fitur 3
                SizedBox(height: 10),
                FeatureWidget(
                  icon: Icons.arrow_drop_up_outlined,
                  title: 'Segitiga',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Segitiga()),
                    );
                  },
                ),
                SizedBox(height: 10),
                // Fitur 4
                FeatureWidget(
                  icon: Icons.houseboat_rounded,
                  title: 'Trapesium',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Trapesium()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFD5FC01),
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          }
          else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Beranda()),
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

class FeatureWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  FeatureWidget({
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 50,
      ),
      label: Text(title),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(240, 70)),
      ),
    );
  }
}