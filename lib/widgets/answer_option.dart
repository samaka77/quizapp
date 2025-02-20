import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quiz_app/controller/quiz_controller.dart';

class AnswerOption extends StatelessWidget {
 final String text;
   final int index, questionsId;
 final  Function() onPressed;

  AnswerOption({super.key,
  required this.index,
  required this.onPressed,
  required this.questionsId,
  required this.text
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizController>(
      init: QuizController(),
      
      builder: (controller)=>InkWell(
        onTap: controller.checkIsQuestionAnswered(questionsId)? null : onPressed,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 3,
            color: controller.getColor(index)
            )

          ),
          child: Padding(padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(text: TextSpan(
                text: '${index + 1}.',
                style: Theme.of(context).textTheme.titleLarge,
                children: [
                  TextSpan(
                    text: text,
                    style: 
                    Theme.of(context).textTheme.titleLarge
                  )
                ]
              ),
              
              ),
              if(controller.checkIsQuestionAnswered(questionsId)&&
              controller.selectAnswer == index
              ) Container(
                width: 30,
                height: 30,
                padding: EdgeInsets.zero,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: controller.getColor(index),
                  border: Border.all(
                    color: Colors.white,
                    width: 3
                  ),
                  shape: BoxShape.circle
                ),
                child: Icon(
                  controller.getIcon(index),
                  color: Colors.white,
                ),
              )
            ],
          ),
          ),
        ),
      ));
  }
}
