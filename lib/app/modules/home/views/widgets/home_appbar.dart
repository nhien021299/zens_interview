import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zens_interview/app/common/values/values.dart';
import 'package:zens_interview/app/common/widgets/widgets.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AppIcons.icHlsLogo,
            height: 40.w,
          ),
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomText(
                    'Handicrafted by',
                    color: AppColors.grey,
                  ),
                  CustomText('Jim HLS'),
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  AppIcons.icAvatar,
                  width: 40.w,
                  height: 40.w,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
