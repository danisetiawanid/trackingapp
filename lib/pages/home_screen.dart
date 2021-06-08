import 'package:flutter/material.dart';

import 'package:trackingapp/pages/boarding_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff786DF5),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 480,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff786DF5),
                            Color(0xffA79EFF),
                          ]),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18),
                              child: IconButton(
                                icon: Image.asset(
                                  'assets/images/menu.png',
                                  width: 24,
                                  height: 16,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18),
                              child: Image.asset(
                                'assets/images/trackinghome.png',
                                width: 110,
                                height: 36,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18),
                              child: IconButton(
                                icon: Image.asset('assets/images/dani.png'),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Hello Danny',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Track your Shipment',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Image.asset(
                                'assets/images/motocycle.png',
                                width: 360,
                                height: 300,
                              ),
                            ),
                            Positioned(
                              top: 34,
                              child: Container(
                                width: 330,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Enter track number',
                                    hintStyle: TextStyle(
                                      color: Color(0xffE1DEFD),
                                    ),
                                    contentPadding: EdgeInsets.all(14),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 28),
                        child: Text(
                          'My Service',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, right: 28),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BoardingScreen();
                            }));
                          },
                          child: Row(
                            children: [
                              Text(
                                'View All',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF4040),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Image.asset(
                                'assets/images/arrow.png',
                                width: 14,
                                height: 14,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BoardingScreen();
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 26, right: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffF6F6FB),
                              ),
                              width: 150,
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 16),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0xff786DF5),
                                                    Color(0xffA79EFF),
                                                  ]),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: Colors.green),
                                        ),
                                        Positioned(
                                          left: 3,
                                          top: 3,
                                          child: Image.asset(
                                            'assets/images/courier.png',
                                            height: 75,
                                            width: 75,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Courier',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '70K + Courier',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BoardingScreen();
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 26, right: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffF6F6FB),
                              ),
                              width: 150,
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 16),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0xff786DF5),
                                                    Color(0xffA79EFF),
                                                  ]),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: Colors.green),
                                        ),
                                        Positioned(
                                          left: 3,
                                          top: 3,
                                          child: Image.asset(
                                            'assets/images/shipping.png',
                                            height: 75,
                                            width: 75,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Courier',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '70K + Courier',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BoardingScreen();
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 26, right: 26),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffF6F6FB),
                              ),
                              width: 150,
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 16),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0xff786DF5),
                                                    Color(0xffA79EFF),
                                                  ]),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: Colors.green),
                                        ),
                                        Positioned(
                                          left: 3,
                                          top: 3,
                                          child: Image.asset(
                                            'assets/images/courier.png',
                                            height: 75,
                                            width: 75,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Courier',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '70K + Courier',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
