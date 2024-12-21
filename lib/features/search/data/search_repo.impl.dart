import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/core/utls/api_service.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchingBooks(
      String value) async {
    try {
      var data = await apiService.get('volumes?Filtering=free-ebooks&q=$value');
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
}
