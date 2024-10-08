import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_detials_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similer_books_section.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetielsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Expanded(
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
