import 'package:flutter/material.dart';
import 'package:zens_interview/app/common/values/values.dart';
import 'package:zens_interview/app/common/widgets/widgets.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color foregroundColor;
  final Function()? onTap;

  const CustomButton({
    super.key,
    required this.title,
    this.backgroundColor,
    this.onTap,
    this.foregroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(),
      behavior: HitTestBehavior.opaque,
      child: Container(
        color: backgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        child: CustomText(
          title,
          style: regS,
          color: foregroundColor,
        ),
      ),
    );
  }
}
