import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                textAlign: TextAlign.start,
                'Create Account',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text('Become new user', style: TextStyle(fontSize: 15)),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                  label: 'Username', ico: Icons.person_2_outlined),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(label: 'email', ico: Icons.email_outlined),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(label: 'Password', ico: Icons.lock),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(label: 'Confirm password', ico: Icons.lock),
              const SizedBox(height: 20),
              SizedBox(
                width: 400,
                height: 50,
                child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.grey, thickness: 2),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: Colors.grey, thickness: 2),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle Facebook login
                      print('Facebook button pressed');
                    },
                    icon: const Icon(Icons.facebook, color: Colors.blue),
                    label: const Text('Facebook',
                        style: TextStyle(color: Colors.black)),
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
                    icon: const Icon(Icons.g_translate, color: Colors.red),
                    label: const Text('Google',
                        style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'By sign up you agree to the',
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Terms and conditions',
                        style: TextStyle(color: Colors.blue, fontSize: 13),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have an account?',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Login Now',
                          style: TextStyle(color: Colors.blue, fontSize: 13)))
                ],
              ),
            ],
          )),
    );
  }
}
