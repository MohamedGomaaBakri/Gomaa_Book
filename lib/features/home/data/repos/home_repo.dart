import 'package:dartz/dartz.dart';
import 'package:gomaabook/core/errors/failures.dart';
import 'package:gomaabook/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fitchbestsellerbooks();
  Future<Either<Failure, List<BookModel>>> fitchfeaturedbooks();
}
