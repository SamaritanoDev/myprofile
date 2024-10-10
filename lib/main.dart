import 'package:flutter/material.dart';
import 'package:myprofile/src/features/profile/profile_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.pinkAccent),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('Mi perfil', style: TextStyle(color: color.onPrimary)),
        ),
        body: const ProfilePage(),
      ),
    );
  }
}
