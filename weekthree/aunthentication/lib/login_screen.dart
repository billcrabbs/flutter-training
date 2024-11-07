import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  // height: 400,
                  // width: 300,
                  color: Colors.grey[300],
                  child: Image.asset(
                    'assets/login.jpg',
                    fit: BoxFit.contain,
                  )),
              const SizedBox(height: 5),
              const CustomTextField(label: 'Username', ico: Icons.person),
              const SizedBox(height: 20),
              const CustomTextField(
                  label: 'Password', obscureText: true, ico: Icons.lock),
              // const SizedBox(height: 5),
              TextButton(
                onPressed: () {},
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text('Forgot password?')),
              ),
              SizedBox(
                width: 400,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    backgroundColor: Colors.blue[500],
                  ),
                  onPressed: () {
                    // Handle login logic here
                  },
                  child: const Text('Login',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: const Row(
                  children: [
                    Text(
                      'Dont have an account?',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      '   Sign Up',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              const Row(children: [
                Expanded(
                  child: Divider(color: Colors.grey, thickness: 2),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'OR',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(
                  child:
                      Divider(color: Colors.grey, thickness: 2),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle Facebook login
                      print('Facebook button pressed');
                    },
                    icon: const Icon(Icons.facebook,
                        color: Colors.blue), 
                    label: const Text('Facebook',
                        style:
                            TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle Google login
                      print('Google button pressed');
                    },
                    icon: const Icon(Icons.g_translate,
                        color: Colors.red),
                    label: const Text('Google',
                        style: TextStyle(color: Colors.black)), 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, 
                    ),
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
