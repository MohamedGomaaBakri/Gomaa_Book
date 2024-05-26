import 'package:flutter/material.dart';
import 'package:gomaabook/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:gomaabook/features/home/presentation/views/widgets/vertical_listview.dart';

import 'widgets/horizontal_listview_body.dart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: CustomAppBar(),
                  ),
                  HorizontalListView(),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Best Seller',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 20),
              child: VerticalListView(),
            ),
          )
        ],
      ),
    );
  }
}
