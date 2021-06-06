import 'package:flutter/material.dart';
import 'package:trackingapp/pages/login_screen.dart';

class BoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6FB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset(
                  'assets/images/tracking.png',
                  width: 168,
                  height: 54,
                ),
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/carbox.png',
                  width: 323,
                  height: 173,
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Color(0xffE1DEFD),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Color(0xff6D61F2),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Color(0xffE1DEFD),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text(
                  'Welcome to Tracking !',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xff18172B)),
                ),
                SizedBox(height: 10),
                Text(
                  'You can send items, track and be\ncourier in this application.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6E80B0)),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff786DF5), Color(0xffA79EFF)]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 320,
                      height: 60,
                      alignment: Alignment.center,
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
