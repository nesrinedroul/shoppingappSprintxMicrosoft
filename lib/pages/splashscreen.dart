import 'package:flutter/material.dart';
import 'package:shoppingmobapp/pages/signin.dart';
import 'onboardingpage.dart'; // import the widget

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 3) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: [
         
          // PAGE 1
          OnboardingPage(
            backgroundImage: 'assets/backgroundd.jpg',
            centerImage: 'assets/salade.png',
            title: 'Fast delivery at your doorstep',
            description:
                'With Shopeasy you can order from your favorite stores and get it delivered to your home in no time!',
            buttonText: 'Discover more!',
            onPressed: _nextPage,
          ),

          // PAGE 2
          OnboardingPage(
            backgroundImage: 'assets/backgroundd.jpg', // or solid white
            centerImage: 'assets/fruit.png',
            title: 'Here we help you find the best deals to buy products',
            description: '',
            buttonText: 'Next',
            onPressed: _nextPage,
            isDarkText: true,
          ),

          // PAGE 3
          OnboardingPage(
            backgroundImage: 'assets/backgroundd.jpg',
            centerImage: 'assets/salmon.png',
            title: 'Discover the best places to shop nearby with ease',
            description: '',
            buttonText: 'Next',
            onPressed: _nextPage,
          ),

          // PAGE 4 - LAST
          OnboardingPage(
            backgroundImage: 'assets/backgroundd.jpg',
            centerImage: 'assets/granola.png',
            title: 'Ready to start shopping?',
            description: '',
            buttonText: 'Get Started',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Signin()),
              );
            },
          ),
        ],
      ),
    );
  }
}
