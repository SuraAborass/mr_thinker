import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../Widgets/appbar.dart';
import '../../Widgets/bottom_navigation_bar.dart';
import '../../Widgets/choice_questions_item.dart';
import '../../Widgets/drawer.dart';


class ChoiceQuestions extends StatelessWidget {
  const ChoiceQuestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: UIColors.white,
        drawer: const AppDrawer(),
        appBar: mainAppBar(),
        bottomNavigationBar: const AppBottomNavigation(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: Get.height - 100,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const ChoiceQuestionsItem();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
