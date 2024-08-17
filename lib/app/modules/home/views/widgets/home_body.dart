import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zens_interview/app/common/values/values.dart';
import 'package:zens_interview/app/common/widgets/custom_button.dart';
import 'package:zens_interview/app/common/widgets/widgets.dart';
import 'package:zens_interview/app/data/models/joke_model.dart';
import 'package:zens_interview/app/modules/home/controllers/home_controller.dart';

class HomeBody extends GetView<HomeController> {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24 * 2),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: controller.jokeList.length,
              onPageChanged: controller.onPageChanged,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final joke = controller.jokeList[index];
                return CustomText(
                  joke.content,
                  style: regS,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () => controller.handleVote(
                      vote: VoteEnum.like,
                    ),
                    title: "This is Funny!",
                    backgroundColor: AppColors.blue,
                  ),
                ),
                const SizedBox(width: 32),
                Expanded(
                  child: CustomButton(
                    onTap: () => controller.handleVote(
                      vote: VoteEnum.dislike,
                    ),
                    title: "This is not funny.",
                    backgroundColor: AppColors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
