import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gomaabook/core/errors/failures.dart';
import 'package:gomaabook/core/utils/custom_error_widget.dart';
import 'package:gomaabook/features/home/presentation/view_models/featured_books_cubit/featuredbookscubit_cubit.dart';
import 'package:gomaabook/features/home/presentation/views/widgets/custom_listview_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbookscubitCubit, FeaturedbookscubitState>(
      builder: (context, state) {
        if (state is FeaturedbookscubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books[0].items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: ListViewItem(
                    imageUrl: state
                        .books[0].items[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedbookscubitFailure) {
          return CustomErrorWidget(errMsg: state.errMsg);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
