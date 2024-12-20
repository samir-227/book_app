part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

class SimilarBookInitial extends SimilarBookState {}

class SimilarBookSuccess extends SimilarBookState {
  final List<BookModel> bookModel;

  const SimilarBookSuccess(this.bookModel);
}

class SimilarBookFailure extends SimilarBookState {
  final String errMessage;

  const SimilarBookFailure(this.errMessage);
}

class SimilarBookLoading extends SimilarBookState {}