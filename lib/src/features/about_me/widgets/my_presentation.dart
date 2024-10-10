import 'package:flutter/material.dart';
import 'package:myprofile/src/utils/constants.dart';

class MyPresentation extends StatelessWidget {
  const MyPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final titleStyle = textTheme.displaySmall!.copyWith(color: color.primary);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Presentación:', style: titleStyle),
        const SizedBox(height: 10),
        const Text(
          myPresentation,
        )
      ],
    );
  }
}
