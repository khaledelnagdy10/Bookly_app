import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(left: 12, right: 8, bottom: 8, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            scale: 3.4,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push('/searchView');
              },
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
