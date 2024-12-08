import 'package:bookly_app/features/home/presentation/views/widgets/details_book_view_body.dart';
import 'package:flutter/material.dart';

class DetailsBookView extends StatelessWidget {
  const DetailsBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: DetailsBookViewBody(),
      ),
    );
  }
}
