import 'package:flutter/material.dart';
import 'package:myprofile/src/features/about_me/widgets/card_project.dart';
import 'package:myprofile/src/utils/constants.dart';

class MyProjectsList extends StatelessWidget {
  const MyProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final titleStyle = textTheme.displaySmall!.copyWith(color: color.primary);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Mis proyectos:', style: titleStyle),
        const SizedBox(height: 10),
        const Row(
          children: [
            CardProject(
              title: 'App Móvil',
              description: 'Android',
              pathImage: imageGuardowl,
            ),
          ],
        ),
      ],
    );
  }
}
