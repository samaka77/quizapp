import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class Custombutton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final double width;
  const Custombutton({super.key,
   required this.onPressed,
    required this.text,
     required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15)
      ),
      child: FloatingActionButton.extended(
        backgroundColor: KPrimaryColor,
        icon: Icon(Icons.arrow_forward_ios),
      
      onPressed: onPressed,
       label: Text(text,
       style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
       )),
    );
  }
}
