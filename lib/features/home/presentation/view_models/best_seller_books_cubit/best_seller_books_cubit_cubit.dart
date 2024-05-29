import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gomaabook/features/home/data/models/book_model/book_model.dart';
import 'package:gomaabook/features/home/data/repos/home_repo.dart';

part 'best_seller_books_cubit_state.dart';

class BestSellerBooksCubitCubit extends Cubit<BestSellerBooksCubitState> {
  BestSellerBooksCubitCubit(this.homeRepo)
      : super(BestSellerBooksCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchbestsellerbooks() async {
    emit(BestSellerbookscubitLoading());
    var result = await homeRepo.fitchbestsellerbooks();

    result.fold(
      (failure) {
        emit(BestSellerbookscubitFailure(errMsg: failure.errMsg));
      },
      (books) {
        emit(BestSellerbookscubitSuccess(books: books));
      },
    );
  }
}
