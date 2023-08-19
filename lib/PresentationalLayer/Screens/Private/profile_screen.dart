import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/appbar.dart';
import '../../Widgets/drawer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: UIColors.white,
          drawer: const AppDrawer(),
          appBar: mainAppBar(),
          body:  SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [Text("ملفي الشخصي",style: UITextStyle.titleBold.copyWith(fontSize: 22),)],
                  ),
                  const SizedBox(height: 15,),
                   Center(child: ListTile(
                    title: const CircleAvatar(
                      backgroundColor: UIColors.yellow,
                      radius: 70,
                      child: CircleAvatar(
                          backgroundColor: UIColors.lightBlack,
                          radius: 65,
                          backgroundImage: AssetImage("assets/images/prof-removebg-preview.png")),
                    ),
                    subtitle: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("بنان اللباد",
                            style: UITextStyle.titleBold.copyWith(fontSize: 20)),
                      ),
                    ),
                  ),),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: UIColors.gray,
                      border: const OutlineInputBorder(),
                      hintText: "الاسم",
                      hintStyle: UITextStyle.titleBold,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: UIColors.yellow),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: UIColors.yellow)),
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: UIColors.gray,
                      border: const OutlineInputBorder(),
                      hintText: "رقم الهاتف أو الايميل",
                      hintStyle: UITextStyle.titleBold,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: UIColors.yellow),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: UIColors.yellow)),
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: UIColors.gray,
                      border: const OutlineInputBorder(),
                      hintText: "نغيير كلمة المرور",
                      hintStyle: UITextStyle.titleBold,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: UIColors.yellow),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: UIColors.yellow)),
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    height: 56,
                    color: UIColors.yellow,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () { },
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        Text('تحديث معلوماتك', style: UITextStyle.titleBold.copyWith(color: UIColors.white,fontSize: 22))
                      ],
                    ),
                    //onPressed: () {Get.toNamed(AppRoutes.homeScreen);},
                  ),

                ],
              ),

            ),
          ),

        ));
  }
}
