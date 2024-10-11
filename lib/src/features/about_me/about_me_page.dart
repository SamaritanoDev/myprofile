import 'package:flutter/material.dart';
import 'package:myprofile/src/features/about_me/my_projects_list.dart';
import 'package:myprofile/src/features/about_me/widgets/button_contact.dart';
import 'package:myprofile/src/features/about_me/widgets/my_presentation.dart';
import 'package:myprofile/src/features/profile/widgets/title_profile.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final tilteAppBarStyle =
        textTheme.titleLarge?.copyWith(color: color.inverseSurface);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Sobre mí', style: tilteAppBarStyle),
      ),
      body: const _BodyAboutMe(),
    );
  }
}

class _BodyAboutMe extends StatelessWidget {
  const _BodyAboutMe();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            ButtonContact(),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            MyPresentation(),
            SizedBox(height: 20),
            MyProjectsList(),
            SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
