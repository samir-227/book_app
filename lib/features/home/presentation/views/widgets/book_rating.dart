import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      required this.mainAxisAlignment,
      required this.bookRating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final String bookRating;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const SizedBox(
          height: 14,
          child: Image(
            image: AssetImage('Assets/images/Star (2).png'),
          ),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          bookRating,
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            count,
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
