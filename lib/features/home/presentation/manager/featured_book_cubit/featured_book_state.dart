part of 'featured_book_cubit.dart';

sealed class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

final class FeaturedBookInitial extends FeaturedBookState {}

final class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> books;
  const FeaturedBookSuccess(this.books);
}

final class FeaturedBookLoading extends FeaturedBookState {}

final class FeaturedBookFailure extends FeaturedBookState {
  final errMessage;
  const FeaturedBookFailure(this.errMessage);
}
