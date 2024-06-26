import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:gomaabook/core/utils/assets.dart';
import 'package:gomaabook/features/home/presentation/view_models/best_seller_books_cubit/best_seller_books_cubit_cubit.dart';
import 'package:gomaabook/features/home/presentation/views/widgets/book_detailed_view.dart';
import 'package:gomaabook/features/home/presentation/views/widgets/rating_widget.dart';

class VerticalListViewItem extends StatelessWidget {
  const VerticalListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          const BookDetailedView(),
        );
      },
      child: BlocBuilder<BestSellerBooksCubitCubit, BestSellerBooksCubitState>(
        builder: (context, state) {
          return SizedBox(
            height: 125,
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.amber,
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          AssetsData.testImage,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: const Text(
                          maxLines: 2,
                          'Harry Potter and The Goblet of fire ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Book Auther',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Row(
                        children: [
                          Text(
                            '19.99 ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Spacer(),
                          RatingWidget(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
