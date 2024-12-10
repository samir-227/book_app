import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: BookAction(
              onPressed: () {},
              text: 'Free',
              textColor: Colors.black,
              backgroundColor: Colors.white,
              fontSize: 16,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: BookAction(
              onPressed: () {},
              text: 'Free Preview',
              textColor: Colors.white,
              backgroundColor: const Color(0xffEF8262),
              fontSize: 16,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
