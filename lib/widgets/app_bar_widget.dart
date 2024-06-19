import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/constants/app_colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 30.h,
      color: AppPallete.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Text(
        "QUIZ",
        style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: AppPallete.primaryTextColor),
      ),
    );
  }
}
