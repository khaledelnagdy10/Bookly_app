import 'package:bookly_app/core/utils/errors/faliure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Faliure, List<BookModel>>> fetchCoverBook();
  Future<Either<Faliure, List<BookModel>>> fetchNewestBooks();
}
