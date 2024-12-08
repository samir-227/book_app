import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsBookViewBody extends StatelessWidget {
  const DetailsBookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: BookDetailsAppBar(),
        ),
      ],
    );
  }
}
