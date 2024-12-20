import 'package:bookly_app/core/utls/service_locator.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/details_book_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/data/presentation/view/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      name: 'Home',
      path: kHomeView,
      builder: (context, state) {
        return const HomeView();
      },
    ),
    GoRoute(
      name: 'Details',
      path: kDetailsView,
      builder: (context, state) {
        return BlocProvider(
          create: (context) => SimilarBookCubit(
            getIt.get<HomeRepoImplement>(),
          ),
          child: DetailsBookView(
            bookModel: state.extra as BookModel,
          ),
        );
      },
    ),
    GoRoute(
      name: 'Search',
      path: kSearchView,
      builder: (context, state) {
        return const SearchView();
      },
    )
  ]);
}
