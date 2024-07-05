import 'package:bookly/features/home/presentation/views/widgets/custom_book_detials_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetielsAppBar(),
                BookDetailsSection(),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: SimilerBooksSection(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
