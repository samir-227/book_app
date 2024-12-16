import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepoImplement homeRepo;
  Future FetchFeaturedBook() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.FetchFeaturedBooks();
    return result.fold(
        (failure) => emit(FeaturedBookFailure(failure.errMessage)),
        (books) => emit(FeaturedBookSuccess(books)));
  }
}
