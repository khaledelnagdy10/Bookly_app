import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(left: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            scale: 3,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 40,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
