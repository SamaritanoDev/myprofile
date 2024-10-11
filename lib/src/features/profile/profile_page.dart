import 'package:flutter/material.dart';
import 'package:myprofile/src/features/about_me/about_me_page.dart';
import 'package:myprofile/src/features/profile/widgets/image_qr.dart';
import 'package:myprofile/src/features/profile/widgets/title_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor =
          (_backgroundColor == Colors.white) ? Colors.pinkAccent : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Mi perfil', style: TextStyle(color: color.onPrimary)),
      ),
      body: InkWell(
        onTap: _changeBackgroundColor,
        child: Container(
          color: _backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AboutMePage();
                  }));
                },
                child: const MyImageQr(),
              ),
              TitleProfile(backgroundColor: _backgroundColor),
            ],
          ),
        ),
      ),
    );
  }
}
