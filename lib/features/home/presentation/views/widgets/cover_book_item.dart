import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CoverBookItem extends StatelessWidget {
  const CoverBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          height: 250,
          width: 150,
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
