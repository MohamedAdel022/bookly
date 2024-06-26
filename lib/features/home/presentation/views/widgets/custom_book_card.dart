import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage(AssetData.testImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
