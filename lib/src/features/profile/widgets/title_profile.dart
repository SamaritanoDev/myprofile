import 'package:flutter/material.dart';

class TitleProfile extends StatelessWidget {
  const TitleProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final nameTitle = textTheme.headlineMedium?.copyWith(color: color.primary);
    final subtitleStyle = textTheme.titleSmall;

    return Column(
      children: [
        Text('Lesly Samaritano', style: nameTitle),
        const SizedBox(height: 20),
        Text(
          'Ingeniera de Sistemas e Informática',
          style: TextStyle(
            color: color.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 250,
          child: Text(
            'Embajadora del programa Google Developers Women Techmakers',
            style: subtitleStyle,
          ),
        )
      ],
    );
  }
}
