import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zens_interview/app/common/values/values.dart';
import 'package:zens_interview/app/common/widgets/widgets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.green,
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          CustomText(
            'A joke a day keeps the doctor away',
            style: regL,
            color: Colors.white,
          ),
          const SizedBox(height: 18),
          CustomText(
            'If you joke wrong way, your teeth have to pay. (Serious)',
            style: regXs.copyWith(
              fontSize: 12.sp,
            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
