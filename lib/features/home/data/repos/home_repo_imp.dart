import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/core/utls/api_service.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> FechFeaturedBooks() async {
    try {
      var data = await apiService
          .get('volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return Left(Failures());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> FechNewestBooks() async {
    try {
      var data = await apiService.get(
          'volumes?Filtering=free-ebooks&q=subject: programming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return Left(Failures());
    }
  }
}
