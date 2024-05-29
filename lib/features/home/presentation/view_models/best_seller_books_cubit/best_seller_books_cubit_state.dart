part of 'best_seller_books_cubit_cubit.dart';

sealed class BestSellerBooksCubitState extends Equatable {
  const BestSellerBooksCubitState();

  @override
  List<Object> get props => [];
}

final class BestSellerBooksCubitInitial extends BestSellerBooksCubitState {}

final class BestSellerbookscubitLoading extends BestSellerBooksCubitState {}

final class BestSellerbookscubitSuccess extends BestSellerBooksCubitState {
  final List<BookModel> books;

  const BestSellerbookscubitSuccess({required this.books});
}

final class BestSellerbookscubitFailure extends BestSellerBooksCubitState {
  final String errMsg;

  const BestSellerbookscubitFailure({required this.errMsg});
}
