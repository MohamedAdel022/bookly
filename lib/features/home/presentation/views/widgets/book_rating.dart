import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Icon(FontAwesomeIcons.solidStar, color: Colors.yellow),
      const SizedBox(width: 6.3),
      const Text(
        '4.5',
        style: Styles.textStyle16,
      ),
      const SizedBox(width: 5),
      Text(' (125)', style: Styles.textStyle14.copyWith(color: Colors.grey))
    ]);
  }
}