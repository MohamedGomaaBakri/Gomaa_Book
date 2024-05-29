import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gomaabook/features/home/data/models/book_model/book_model.dart';
import 'package:gomaabook/features/home/data/repos/home_repo.dart';

part 'featuredbookscubit_state.dart';

class FeaturedbookscubitCubit extends Cubit<FeaturedbookscubitState> {
  FeaturedbookscubitCubit(this.homeRepo) : super(FeaturedbookscubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchfeaturedbooks() async {
    emit(FeaturedbookscubitLoading());
    var result = await homeRepo.fitchfeaturedbooks();

    result.fold(
      (failure) {
        emit(FeaturedbookscubitFailure(errMsg: failure.errMsg));
      },
      (books) {
        emit(FeaturedbookscubitSuccess(books: books));
      },
    );
  }
}
