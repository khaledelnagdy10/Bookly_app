import 'package:bookly_app/features/home/presentation/views/widgets/cover_book_item.dart';
import 'package:flutter/material.dart';

class ListViewCoverBook extends StatelessWidget {
  const ListViewCoverBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
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
