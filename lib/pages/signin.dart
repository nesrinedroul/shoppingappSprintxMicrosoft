import 'package:flutter/cupertino.dart';

import 'package:shoppingmobapp/pages/homepage.dart';
import 'package:shoppingmobapp/pages/signup.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 255, 193, 107),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset('assets/logo.png', width: 250, height: 250),
              const SizedBox(height: 20),
              Text(
                'Sign In Page',
                style: CupertinoTheme.of(context)
                    .textTheme
                    .navLargeTitleTextStyle,
              ),
              const SizedBox(height: 30),
              CupertinoTextField(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                placeholder: 'Username',
                decoration: BoxDecoration(
                  color: CupertinoColors.extraLightBackgroundGray,
                  border: Border.all(color: CupertinoColors.systemGrey),
                  borderRadius: BorderRadius.circular(35.0),
                ),
              ),
              const SizedBox(height: 20),
              CupertinoTextField(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                placeholder: 'Password',
                obscureText: true,
                decoration: BoxDecoration(
                  color: CupertinoColors.extraLightBackgroundGray,
                  border: Border.all(color: CupertinoColors.systemGrey),
                  borderRadius: BorderRadius.circular(35.0),
                ),
              ),
              const SizedBox(height: 30),
              CupertinoButton.filled(
                borderRadius: BorderRadius.circular(50.0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 92, vertical: 18),
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const Signup(),
                        ),
                      );
                    },
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Forgot your password?'),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      // TODO: Handle forgot password
                    },
                    child: const Text('Reset Password'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
