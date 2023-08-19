import 'package:flutter/material.dart';
import 'package:mr_thinker/Constants/colors.dart';

import '../../../Constants/text_styles.dart';
import '../../../Constants/ui_styles.dart';
import '../../Widgets/appbar.dart';
import '../../Widgets/bottom_navigation_bar.dart';
import '../../Widgets/drawer.dart';
import '../../Widgets/drop_down.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  String? qType = "أسئلة صح وخطأ" ;
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
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                CustomDropDownFormField(
                  value: qType,
                  items: const ['أسئلة صح وخطأ','أسئلة خيار من متعدد',
                  'أسئلة تقليدية','فراغات'],
                  onChanged: (value) {
                    qType = value;
                  },
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: textFieldStyle.copyWith(
                      hintText: "أدخل النص الذي تريد استخراج الأسئلة منه..."),
                  maxLines: 18,
                ),
                const SizedBox(height: 20,),
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
                  //onPressed: () {Get.toNamed(AppRoutes.homeScreen);},
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
