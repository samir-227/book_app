import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplment implements HomeRepo {
  @override
  Future<Either<Failures, BookModel>> FechFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, BookModel>> FechNewestBooks() {
    throw UnimplementedError();
  }
}
