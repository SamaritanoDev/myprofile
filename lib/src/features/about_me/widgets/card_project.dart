import 'package:flutter/material.dart';

class CardProject extends StatelessWidget {
  final String title;
  final String description;
  final String pathImage;
  const CardProject({
    super.key,
    required this.title,
    required this.description,
    required this.pathImage,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      color: color.inverseSurface,
      child: SizedBox(
        width: 200,
        height: 255,
        child: Column(
          children: [
            _ContendTop(title, description),
            _ContendBottom(pathImage),
          ],
        ),
      ),
    );
  }
}

class _ContendTop extends StatelessWidget {
  final String title;
  final String description;
  const _ContendTop(
    this.title,
    this.description,
  );

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nombre: $title',
            style: TextStyle(color: color.surface),
          ),
          Text('Descripción: $description',
              style: TextStyle(color: color.surface)),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}

class _ContendBottom extends StatelessWidget {
  final String pathImage;
  const _ContendBottom(
    this.pathImage,
  );

  @override
  Widget build(BuildContext context) {
    return Image(
      width: double.infinity,
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.22),
      colorBlendMode: BlendMode.darken,
      image: AssetImage(pathImage),
    );
  }
}
