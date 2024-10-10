import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonContact extends StatelessWidget {
  const ButtonContact({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(
          'Contáctame',
          style: textTheme.titleMedium?.copyWith(color: Colors.pinkAccent),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.instagram),
          label: const Text('@flutterinstudio'),
        ),
      ],
    );
  }
}
