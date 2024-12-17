part of 'newest_book_cubit.dart';

// abstract class NewestBookState extends Equatable {
//   const NewestBookState();

//   @override
//   List<Object> get props => [];
// }

// class NewestBookInitial extends NewestBookState {}

// class NewestBookSuccess extends NewestBookState {
//   final List<BookModel> books;
//   const NewestBookSuccess(this.books);
// }

// class NewestBookLoading extends NewestBookState {}

// class NewestBookFailure extends NewestBookState {
//   final String errMessage;
//   const NewestBookFailure(this.errMessage);
// }

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccess(this.books);
}

class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  const NewestBooksFailure(this.errMessage);
}
