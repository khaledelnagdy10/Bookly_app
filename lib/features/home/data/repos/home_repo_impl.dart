import 'package:bookly_app/core/utils/errors/faliure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  @override
  Future<Either<Faliure, List<BookModel>>> fetchBestSellerBook() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchCoverBook() {
    throw UnimplementedError();
  }
}
