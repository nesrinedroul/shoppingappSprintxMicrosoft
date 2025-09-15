

import 'package:flutter/cupertino.dart';

import 'package:shoppingmobapp/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: const Color.fromARGB(255, 96, 9, 247),
      ),
      home: const SplashScreen(),
    );
  }
}

