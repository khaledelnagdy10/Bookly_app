import 'package:bookly_app/features/home/presentation/views/widgets/cover_book_item.dart';
import 'package:flutter/material.dart';

class ListViewInnerBookDetails extends StatelessWidget {
  const ListViewInnerBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: CoverBookItem(),
            );
          }),
    );
  }
}
