import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookmodel});

  final BookModel bookmodel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails);
      },
      child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomBookImage(
                  imageUrl: bookmodel.volumeInfo.imageLinks.thumbnail),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(bookmodel.volumeInfo.title!,
                          style: Styles.textStyle20
                              .copyWith(fontFamily: kGtSectraFine),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      bookmodel.volumeInfo.authors!.join(' '),
                      style: Styles.textStyle14.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Free',
                            style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold,
                            )),
                        BookRating(
                            rating: bookmodel.volumeInfo.averageRating ?? 0,
                            totalRating:
                                bookmodel.volumeInfo.ratingsCount ?? 0),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
