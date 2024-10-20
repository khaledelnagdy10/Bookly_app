import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/botton_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/cover_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/list_view_inner_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 150,
                    child: CoverBookItem(),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    'The Jungle Book',
                    style: Styles.textStyle30,
                  ),
                  Text(
                    'J.K Rowling',
                    style: Styles.textStyle14.copyWith(color: Colors.grey),
                  ),
                  const RatingBook(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ButtonPriceAction(),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Text(
                        'You can aslo like',
                        style: Styles.textStyle18.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ListViewInnerBookDetails(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
