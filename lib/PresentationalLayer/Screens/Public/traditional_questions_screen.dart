import 'package:flutter/material.dart';
import 'package:mr_thinker/Constants/colors.dart';
import 'package:mr_thinker/Constants/text_styles.dart';
import 'package:get/get.dart';
import '../../Widgets/appbar.dart';
import '../../Widgets/bottom_navigation_bar.dart';
import '../../Widgets/drawer.dart';
import '../../Widgets/question_answer_item.dart';

class TraditionalQuestions extends StatelessWidget {
  const TraditionalQuestions({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                SizedBox(
                  height: Get.height - 230,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const QuestionAnswerItem();
                    },
                  ),
                ),
                MaterialButton(
                  height: 50,
                  color: UIColors.yellow,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () { },
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Text('إرسال', style: UITextStyle.titleBold.copyWith(color: UIColors.white,fontSize: 22))
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
