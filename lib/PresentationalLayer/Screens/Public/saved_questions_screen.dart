import 'package:flutter/material.dart';
import 'package:mr_thinker/Constants/text_styles.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../Widgets/appbar.dart';
import '../../Widgets/bottom_navigation_bar.dart';
import '../../Widgets/drawer.dart';
import '../../Widgets/saved_question_item.dart';

class SavedQuestions extends StatelessWidget {
  const SavedQuestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: UIColors.white,
        drawer: const AppDrawer(),
        appBar: mainAppBar(),
        bottomNavigationBar: const AppBottomNavigation(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("الأسئلة المحفوظة",style: UITextStyle.titleBold,),
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: Get.height-250,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const SavedQuestionItem();
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
