import 'package:flutter/material.dart';
import 'package:gomaabook/core/utils/assets.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Row(
          children: [
            Image(
              height: 150,
              width: 100,
              image: AssetImage(AssetsData.testImage),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Harry Potter and The Goblet of fire ',
                  style: TextStyle(),
                )
              ],
            )
          ],
        );
      },
    );
  }
}
