import 'package:flutter/material.dart';
import 'package:myprofile/src/features/profile/widgets/image_qr.dart';
import 'package:myprofile/src/features/profile/widgets/title_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Mi perfil', style: TextStyle(color: color.onPrimary)),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyImageQr(),
          TitleProfile(),
        ],
      ),
    );
  }
}
