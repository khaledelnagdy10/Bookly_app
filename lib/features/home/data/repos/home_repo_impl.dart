import 'package:bookly_app/core/utils/api.dart';
import 'package:bookly_app/core/utils/errors/faliure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  @override
  Future<Either<Faliure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await Api().get(
          endPoint:
              'volumes?filtering=free-ebooks&sorting=newest&q=subject : programming');

      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServicesFaliure.fromDioException(e));
      }
      return left(ServicesFaliure(e.toString()));
    }
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchCoverBook() {
    throw UnimplementedError();
  }
}
