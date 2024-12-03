import 'package:bookly_app/core/utls/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          FeaturedListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Newest Books',
            style: Styles.textStyle18,
          ),
          // SizedBox(
          //   height: 4,
          // ),
          Expanded(child: BestSellerListView()),
        ],
      ),
    );
  }
}
