import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String backgroundImage;
  final String centerImage;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onPressed;
  final bool isDarkText; // for white vs black text depending on bg

  const OnboardingPage({
    Key? key,
    required this.backgroundImage,
    required this.centerImage,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
    this.isDarkText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColor = isDarkText ? Colors.black : Colors.white;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
          opacity: 0.55,
        ),
        color: Colors.black, // fallback color
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 82,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Image.asset(centerImage, width: 300, height: 300),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                description,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 90),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color.fromARGB(255, 0, 175, 47),
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
