import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zens_interview/app/modules/home/views/widgets/home_appbar.dart';
import 'package:zens_interview/app/modules/home/views/widgets/home_body.dart';
import 'package:zens_interview/app/modules/home/views/widgets/home_finish_widget.dart';
import 'package:zens_interview/app/modules/home/views/widgets/home_footer.dart';
import 'package:zens_interview/app/modules/home/views/widgets/home_header.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeAppbar(),
            const HomeHeader(),
            Obx(
              () => Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: !controller.isFinished.value
                      ? const HomeBody(
                          key: Key('1'),
                        )
                      : const HomeFinishWidget(
                          key: Key('2'),
                        ),
                ),
              ),
            ),
            const HomeFooter(),
          ],
        ),
      ),
    );
  }
}
