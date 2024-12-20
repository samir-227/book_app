import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepoImplement) : super(SimilarBookInitial());
  final HomeRepoImplement homeRepoImplement;
  Future<void> FetchSimilarBook({required String category}) async {
    emit(SimilarBookLoading());
    var result = await homeRepoImplement.FetchSimilarBooks(category: category);
    return result.fold(
        (failure) => emit(SimilarBookFailure(failure.errMessage)),
        (books) => emit(SimilarBookSuccess(books)));
  }
}
