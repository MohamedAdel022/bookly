import 'package:flutter/material.dart';
import 'custom_search_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomSearchTextField(),
        ),
      ],
    );
  }
}
