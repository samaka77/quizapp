
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controller/quiz_controller.dart';

class ProgressTimer extends StatelessWidget {
  ProgressTimer({Key? key}) : super(key: key);
  final controller = Get.find<QuizController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: 1 - (controller.sec.value / 15),
              color: KPrimaryColor,
              backgroundColor: Colors.grey,
              strokeWidth: 8,
            ),
            Center(
              child: Text(
                '${controller.sec.value}',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: KPrimaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}