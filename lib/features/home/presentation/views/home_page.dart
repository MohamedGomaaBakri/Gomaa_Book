import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gomaabook/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:gomaabook/features/home/presentation/views/widgets/vertical_listview.dart';

import 'widgets/horizontal_listview_body.dart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            HorizontalListView(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Best Seller',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: VerticalListView()),
          ],
        ),
      ),
    );
  }
}
