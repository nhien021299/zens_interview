import 'package:flutter/material.dart';
import 'package:zens_interview/app/common/values/values.dart';
import 'package:zens_interview/app/common/widgets/widgets.dart';

class HomeFinishWidget extends StatelessWidget {
  const HomeFinishWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(24),
      child: CustomText(
        "That's all the jokes for today! Come back another day!",
        style: semiBoldL,
        textAlign: TextAlign.center,
      ),
    );
  }
}
