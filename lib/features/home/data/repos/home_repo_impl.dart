import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gomaabook/core/errors/failures.dart';
import 'package:gomaabook/core/utils/api_request.dart';
import 'package:gomaabook/features/home/data/models/book_model/book_model.dart';
import 'package:gomaabook/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiRequest apiRequest;

  HomeRepoImpl(this.apiRequest);
  @override
  Future<Either<Failure, List<BookModel>>> fitchbestsellerbooks() async {
    try {
      var data = await apiRequest.get(
          endpoint:
              'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest');

      List<BookModel> books = [];
      books.add(BookModel.fromJson(data));
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fitchfeaturedbooks() async {
    try {
      var data = await apiRequest.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=subject:programming');

      List<BookModel> books = [];
      books.add(BookModel.fromJson(data));
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
