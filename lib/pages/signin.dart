import 'package:flutter/material.dart';
import 'package:shoppingmobapp/pages/homepage.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Container(
        width: 200,
        color: Colors.grey[200],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle Home tap
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Handle Profile tap
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle Settings tap
              },
            ),
          ],
        ),
      ),
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