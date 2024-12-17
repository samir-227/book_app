import 'package:bookly_app/features/home/presentation/views/widgets/custom_best_seller_item.dart';
import 'package:flutter/material.dart';

class ResultSearchListView extends StatelessWidget {
  const ResultSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16),
          // child: BestSellerListViewItem(),
          child: Text('data'),
        );
      },
      itemCount: 10,
    );
  }
}
