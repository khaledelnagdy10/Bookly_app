import 'package:bookly_app/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetialsView extends StatelessWidget {
  const BookDetialsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBody(),
    );
  }
}
