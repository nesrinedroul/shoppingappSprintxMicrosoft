import 'package:flutter/material.dart';
import 'package:shoppingmobapp/pages/homepage.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      appBar: AppBar(centerTitle: true,
        title: Text('Sign In'),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Container(
            height: MediaQuery.of(context).size.height - kToolbarHeight,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/splash1.jpg', width: 250, height: 250),
              SizedBox(height: 20),
              Text('Sign In Page', style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 20),
               TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const HomePage())
                    );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 72, vertical: 12),
                ),
                child: Text('Sign In' , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Google sign in
                },
                label: Text('Sign in with Google'),
                icon: Icon(Icons.login),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      // Handle sign up action
                    },
                    child: Text('Sign Up'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Forgot your password?'),
                  TextButton(
                    onPressed: () {
                      // Handle forgot password action
                    },
                    child: Text('Reset Password'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}