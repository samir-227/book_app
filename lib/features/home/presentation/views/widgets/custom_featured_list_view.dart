import 'package:bookly_app/core/utls/app_router.dart';
import 'package:bookly_app/core/utls/widgets/error_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_book_cubit/featured_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kDetailsView,
                          extra: state.books[index]);
                    },
                    child: BookItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
