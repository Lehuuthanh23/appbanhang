import 'package:baitapontuan10/page/home_page.dart';
import 'package:baitapontuan10/page/login_page.dart';
import 'package:baitapontuan10/page/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
        "/index": (context) => const HomePage(),
        "/profile": (context) => const ProfilePage(),
      },
    );
  }
}
