import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/constants/app_colors.dart';

class QuizLogo extends StatelessWidget {
  const QuizLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'QUIZ',
          style: TextStyle(
            fontSize: 30.sp,
            color: AppPallete.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppPallete.whiteColor,
          ),
          child: Center(
            child: Image.asset(
              'assets/images/question_mark.jpg', // Replace with your image asset path
              height: 80.h,
              width: 80.w,
            ),
          ),
        ),
      ],
    );
  }
}
