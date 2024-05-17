import 'package:flutter/material.dart';
import 'package:gomaabook/features/home/presentation/views/widgets/custom_listview_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16),
            child: ListViewItem(),
          );
        },
      ),
    );
  }
}
