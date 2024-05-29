part of 'featuredbookscubit_cubit.dart';

sealed class FeaturedbookscubitState extends Equatable {
  const FeaturedbookscubitState();

  @override
  List<Object> get props => [];
}

final class FeaturedbookscubitInitial extends FeaturedbookscubitState {}

final class FeaturedbookscubitLoading extends FeaturedbookscubitState {}

final class FeaturedbookscubitSuccess extends FeaturedbookscubitState {
  final List<BookModel> books;

  const FeaturedbookscubitSuccess({required this.books});
}

final class FeaturedbookscubitFailure extends FeaturedbookscubitState {
  final String errMsg;

  const FeaturedbookscubitFailure({required this.errMsg});
}
