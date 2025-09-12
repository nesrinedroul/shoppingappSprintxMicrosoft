import 'package:flutter/material.dart';
import 'package:shoppingmobapp/pages/signin.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 96, 9, 247),
                  Color.fromARGB(255, 59, 0, 179),
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://cdni.iconscout.com/illustration/premium/thumb/asset-allocation-divides-investments-to-manage-risk-illustration-svg-png-download-7162633.png',
                    width: 400,
                    height: 400,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome to ShopEasy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 255, 255, 255),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/page1.png',
                    width: 400,
                    height: 400,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'here we help you find the best deals to buy products',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    shadows: [
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Colors.black26,
                        ),
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 8.0,
                          color: Colors.black26,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
           Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 136, 67, 255),
                  Color.fromARGB(255, 59, 0, 179),
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/page2.png',
                    width: 400,
                    height: 400,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'here we help you find the best deals to buy products',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    shadows: [
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Colors.black26,
                        ),
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 8.0,
                          color: Colors.black26,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 96, 9, 247),
                  Color.fromARGB(255, 59, 0, 179),
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/page3.png',
                    width: 400,
                    height: 400,
                  ),
                  const SizedBox(height: 20),
                  Padding( 
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
               
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const Signin())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color.fromARGB(255, 96, 9, 247),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
               ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}