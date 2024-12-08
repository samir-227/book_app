import 'package:bookly_app/features/home/presentation/views/details_book_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
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
        return const DetailsBookView();
      },
    )
  ]);
}
