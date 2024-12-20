import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/details_book_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsBookView extends StatefulWidget {
  const DetailsBookView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<DetailsBookView> createState() => _DetailsBookViewState();
}

class _DetailsBookViewState extends State<DetailsBookView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBookCubit>(context)
        .FetchSimilarBook(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DetailsBookViewBody(bookModel: widget.bookModel),
      ),
    );
  }
}
