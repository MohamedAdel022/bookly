import 'package:flutter/material.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage('assets/images/test_image.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
