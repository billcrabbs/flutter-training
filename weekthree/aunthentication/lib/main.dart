import 'package:flutter/material.dart';
import 'src/features/Authentication/presentation/pages/signup_screen.dart';
import 'src/features/Authentication/presentation/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      title: 'Login & Signup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
        '/signup': (context) => const SignupScreen(),
      },
    );
  }
}
