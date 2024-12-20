import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> FetchFeaturedBooks();
  Future<Either<Failures, List<BookModel>>> FetchNewestBooks();
  Future<Either<Failures, List<BookModel>>> FetchSimilarBooks(
      {required String category});
}
