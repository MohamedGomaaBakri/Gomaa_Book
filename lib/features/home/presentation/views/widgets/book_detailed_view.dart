import 'package:flutter/material.dart';
import 'book_action.dart';
import 'custom_listview_item.dart';
import 'rating_widget.dart';
import 'similar_books_list.dart';

class BookDetailedView extends StatelessWidget {
  const BookDetailedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_checkout_outlined,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.42,
                child: const ListViewItem(),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'The Jungle Book',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Rudyard Kipling',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const RatingWidget(),
              const SizedBox(
                height: 37,
              ),
              const BookActions(),
              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SimilarBooksListView(),
            ],
          ),
        ),
      ),
    );
  }
}
