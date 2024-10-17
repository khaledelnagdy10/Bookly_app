import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/cover_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            ListTile(
              title: const Text(
                'The Jungle Book',
                style: Styles.textStyle20,
              ),
              subtitle: Text(
                'J.K Rowling',
                style: Styles.textStyle14.copyWith(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
