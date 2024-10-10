import 'package:flutter/material.dart';
import 'package:myprofile/src/utils/constants.dart';

class MyImageQr extends StatelessWidget {
  const MyImageQr({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        width: 200,
        height: 300,
        image: AssetImage(imageQR),
        fit: BoxFit.cover,
      ),
    );
  }
}
