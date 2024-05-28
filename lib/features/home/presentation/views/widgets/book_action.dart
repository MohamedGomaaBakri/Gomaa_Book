import 'package:flutter/material.dart';
import 'package:gomaabook/core/utils/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            fontSize: 24,
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            text: '19.9',
          ),
        ),
        Expanded(
          child: CustomButton(
            fontSize: 18,
            textColor: Colors.white,
            backgroundColor: Color(0xffe87c5b),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: 'Free Preview',
          ),
        ),
      ],
    );
  }
}
