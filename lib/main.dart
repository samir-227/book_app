import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utls/app_router.dart';
import 'package:bookly_app/core/utls/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_book_cubit/featured_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(getIt.get<HomeRepoImplement>())
            ..FetchFeaturedBook(),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(getIt.get<HomeRepoImplement>())
            ..FetchNewestBook(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            scaffoldBackgroundColor: kPrimaryColor),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
