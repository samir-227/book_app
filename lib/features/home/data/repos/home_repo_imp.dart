import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/core/utls/api_service.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> FetchFeaturedBooks() async {
    try {
      var data = await apiService
          .get('volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
  //try {
  //     var data = await apiService
  //         .get('volumes?Filtering=free-ebooks&q=subject:Programming');
  //     List<BookModel> books = [];
  //     for (var item in data['item']) {
  //       try {
  //         books.add(BookModel.fromJson(item));
  //       } catch (e) {
  //         books.add(BookModel.fromJson(item));
  //       }
  //     }
  //     return right(books);
  //   } on Exception catch (error) {
  //     if (error is DioException) {
  //       return Left(ServerFailure.fromDioError(error));
  //     }
  //     return Left(
  //       ServerFailure(
  //         errMessage: error.toString(),
  //       ),
  //     );
  //   }
  // }

  @override
  Future<Either<Failures, List<BookModel>>> FetchNewestBooks() async {
    try {
      var data = await apiService.get(
          'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
