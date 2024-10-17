import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.yellow,
              size: 16,
            )),
        const Text('4.8'),
        const Text('(265)'),
      ],
    );
  }
}
