import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants/app_colors.dart';
import 'package:quiz_app/constants/app_routes.dart';

import '../controllers/home_controller.dart';

class QuizList extends StatelessWidget {
  final homeController = Get.find<HomeController>();

  QuizList({super.key});

  @override
  Widget build(BuildContext context) {
    var gradients = [
      const LinearGradient(colors: [Color(0xFFFD649C), Color(0xFFFB7D67)]),
      const LinearGradient(colors: [Color(0xFF3D75F3), Color(0xFF00AEFE)]),
      const LinearGradient(colors: [Color(0xFFA78BD4), Color(0xFFF4B6E9)]),
      const LinearGradient(colors: [Color(0xFF71A7FF), Color(0xFF77CED3)]),
    ];

    return Obx(() {
      return ListView.builder(
        itemCount: homeController.topics.length,
        itemBuilder: (context, index) {
          var topic = homeController.topics[index];
          var gradient = gradients[index % gradients.length];
          return InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.getQuizScreen(topic[0]));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                gradient: gradient,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text(
                  topic[0],
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppPallete.primaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  topic[1],
                  style: TextStyle(
                    color: AppPallete.primaryTextColor,
                    fontSize: 10.sp,
                  ),
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
