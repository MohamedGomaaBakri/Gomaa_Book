import 'package:flutter/material.dart';
import 'package:gomaabook/features/home/presentation/views/widgets/custom_appbar.dart';

import 'widgets/home_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: HomeViewBody(),
          ),
        ],
      ),
    );
  }
}
