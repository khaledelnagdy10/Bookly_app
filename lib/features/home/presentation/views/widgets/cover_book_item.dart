import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CoverBookItem extends StatelessWidget {
  const CoverBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.coverBook),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
