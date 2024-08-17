import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zens_interview/app/common/values/values.dart';
import 'package:zens_interview/app/common/widgets/widgets.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomText(
            'This appis created as part of Hisolutions program. The materials contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.',
            textAlign: TextAlign.center,
            style: regXs.copyWith(
              fontSize: 10.sp,
            ),
            color: AppColors.grey,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: CustomText('Copyright 2021 HLS'),
          ),
        ],
      ),
    );
  }
}
