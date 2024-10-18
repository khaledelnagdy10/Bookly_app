import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtonPrice extends StatelessWidget {
  const CustomButtonPrice(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.borderRadius,
      required this.text});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: textColor,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w800),
          )),
    );
  }
}
