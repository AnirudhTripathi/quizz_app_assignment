import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/constants/app_colors.dart';

class WelcomeCard extends StatelessWidget {
  final String name;
  const WelcomeCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppPallete.greenAccentColors,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          const Icon(Icons.book, size: 50, color: Colors.white),
           SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome $name !!',
                  style:  TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'It\'s Quiz Time, Choose the skill and proceed',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          // Image.asset(
          //   'assets/welcome_image.png', // Replace with your image asset path
          //   height: 50,
          //   width: 50,
          // ),
        ],
      ),
    );
  }
}
