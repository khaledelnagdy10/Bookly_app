import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widget/search_books_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      minimum: const EdgeInsets.only(left: 12, right: 12, top: 30),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'search',
              suffixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              Text(
                'Search result',
                style: Styles.textStyle18,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Expanded(child: SearchBookListView())
        ],
      ),
    ));
  }
}
