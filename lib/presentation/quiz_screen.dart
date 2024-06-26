import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/widgets/app_bar_widget.dart';
import 'package:quiz_app/widgets/option_tile_widget.dart';

import '../constants/app_colors.dart';
import '../controllers/quiz_controller.dart';

class QuizScreen extends StatelessWidget {
  final String topic;
  final QuizController quizController = Get.find<QuizController>();

  QuizScreen({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    quizController.fetchQuizQuestions(topic);
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const AppBarWidget(),
            Obx(
              () => quizController.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: const BoxDecoration(
                          color: AppPallete.whiteColor,
                        ),
                        child: Obx(() {
                          var question = quizController.questions[
                              quizController.currentQuestionIndex.value];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Center(
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppPallete.whiteColor,
                                    border: Border.all(
                                      color: AppPallete.blackColor,
                                      width: 1,
                                    ),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/images/question_mark.jpg', // Replace with your image asset path
                                      height: 80.h,
                                      width: 80.w,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                width: double.maxFinite,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppPallete.lightGreenColor),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: 0,
                                      top: 0,
                                      child: Text(
                                        '${quizController.currentQuestionIndex.value + 1}/${quizController.questions.length}',
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: AppPallete.blackColor,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 20),
                                        Text(
                                          question.question,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: AppPallete.blackColor,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(height: 20),
                                        for (var i = 0;
                                            i < question.options.length;
                                            i++)
                                          OptionTile(
                                            option: question.options[i],
                                            isSelected: quizController
                                                        .selectedOptions[
                                                    quizController
                                                        .currentQuestionIndex
                                                        .value] ==
                                                i,
                                            onTap: () {
                                              quizController.selectOption(
                                                  quizController
                                                      .currentQuestionIndex
                                                      .value,
                                                  i);
                                            },
                                          ),
                                        SizedBox(height: 8.h),
                                        Center(
                                          child: SizedBox(
                                            height: 30.h,
                                            width: 100.w,
                                            child: ElevatedButton(
                                              onPressed:
                                                  quizController.nextQuestion,
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.orangeAccent,
                                              ),
                                              child: Text(
                                                'NEXT',
                                                style: TextStyle(
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        AppPallete.whiteColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
