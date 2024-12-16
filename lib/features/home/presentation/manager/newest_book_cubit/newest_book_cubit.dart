import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepoImplement) : super(NewestBookInitial());
  final HomeRepoImplement homeRepoImplement;

  Future<void> FetchNewestBook() async {
    emit(NewestBookLoading());
    var result = await homeRepoImplement.FetchNewestBooks();
    return result.fold((failure) => emit(NewestBookFailure(failure.errMessage)),
        (books) => emit(NewestBookSuccess(books)));
  }
}
