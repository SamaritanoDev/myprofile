import 'package:flutter/material.dart';
import 'package:myprofile/src/features/profile/profile_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.pinkAccent),
      //  home: const CustomNavigationBar(),
      home: const ProfilePage(),
    );
  }
}
