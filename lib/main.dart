import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hackathon_practice/screens/home_screen.dart';
import 'package:hackathon_practice/screens/login_screen.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthenticationWrapper(),
    );
  }
}

// decides which screen to show based on authentication process
class AuthenticationWrapper extends StatefulWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  _AuthenticationWrapperState createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  @override
  Widget build(BuildContext context) {
    // placeholder boolean
    bool isAuthenticated = false;
    // TODO: implement firebase connection
    return isAuthenticated
        ? const HomeScreen("Flutter Demo Home Page")
        : const LoginScreen();
  }
}
