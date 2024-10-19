import 'package:bookly_app/core/utils/api.dart';
import 'package:bookly_app/core/utils/errors/faliure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

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
    } on Exception catch (e) {
      throw left(ServicesFaliure());
    }
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchCoverBook() {
    throw UnimplementedError();
  }
}
