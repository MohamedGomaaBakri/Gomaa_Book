import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star_rate,
          color: Colors.yellow,
          size: 30,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(564)',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
