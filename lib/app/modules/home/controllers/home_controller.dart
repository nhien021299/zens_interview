import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:zens_interview/app/common/storage/storage.dart';
import 'package:zens_interview/app/data/mock_data.dart';
import 'package:zens_interview/app/data/models/joke_model.dart';

class HomeController extends GetxController {
  final jokeList = <JokeModel>[...List.from(MockData.jokes..shuffle())].obs;

  final PageController pageController = PageController();

  int currentJokeIndex = 0;

  final isFinished = false.obs;

  @override
  void onInit() async {
    final List<JokeModel> cookieJokeList = await Storage.getJokeList();

    for (var e in cookieJokeList) {
      if (kDebugMode) {
        print(e.toJson());
      }
    }
    super.onInit();
  }

  void onPageChanged(int index) {
    currentJokeIndex = index;
  }

  void handleVote({required VoteEnum vote}) async {
    jokeList[currentJokeIndex].vote = vote;

    if (currentJokeIndex == jokeList.length - 1) {
      await Storage.saveJokeList(jokeList: jokeList);
      isFinished.value = true;
      return;
    }
    pageController.nextPage(
        duration: const Duration(milliseconds: 350), curve: Curves.decelerate);
  }
}
