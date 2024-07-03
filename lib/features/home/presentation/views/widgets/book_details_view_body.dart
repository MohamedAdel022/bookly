import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_card.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_detials_app_bar.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetielsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookCard(),
          ),
          const SizedBox(height: 43),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(height: 6),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18
                .copyWith(color: Colors.white.withOpacity(.7)),
          ),
          const SizedBox(height: 18),
          const BookRating(),
          const SizedBox(height: 37),
          const BooksActions(),
        ],
      ),
    );
  }
}
