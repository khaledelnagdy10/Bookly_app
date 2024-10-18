import 'package:bookly_app/features/home/presentation/views/widgets/custom_button_price_book.dart';
import 'package:flutter/material.dart';

class ButtonPriceAction extends StatelessWidget {
  const ButtonPriceAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButtonPrice(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
            text: r'19.99$',
          ),
        ),
        Expanded(
            child: CustomButtonPrice(
          backgroundColor: Color(0xffEf8262),
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(0),
          ),
          text: 'Free Preview',
        ))
      ],
    );
  }
}
