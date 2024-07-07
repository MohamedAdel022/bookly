import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            text: '19.99\$',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            onPressed: () {},
          )),
          Expanded(
              child: CustomButton(
            text: 'Free Preview',
            backgroundColor: const Color(0xffF08262),
            textColor: Colors.white,
            fontSize: 16,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            onPressed: () {},
          )),
        ],
      ),
    );
  }
}
