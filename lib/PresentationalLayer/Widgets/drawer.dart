import 'package:flutter/material.dart';
import '../../Constants/colors.dart';
import '../../Constants/routes.dart';
import '../../Constants/text_styles.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(decoration: const BoxDecoration(color: UIColors.yellow),
              accountName: const Text("بنان اللباد",
                  style: UITextStyle.titleBold),
              accountEmail:  Text("bananlabbad@gmail.com",
                  style:  UITextStyle.bodyNormal.copyWith(color: UIColors.lightBlack)),
              currentAccountPicture: const CircleAvatar(
                 backgroundImage: AssetImage("assets/images/prof-removebg-preview.png"),
                //backgroundColor: UIColors.yellow,
              ),
            ),
            ListTile(
              onTap: ()  {
                Get.toNamed(AppRoutes.profileScreen);
              },
              leading: const Icon(
                Icons.person,
                color: UIColors.lightBlack,
                size: 30,
              ),
              title: const Text(
                "الملف الشخصي",
                style:  UITextStyle.titleBold,
              ),
            ),
            ListTile(
              onTap: ()  {
                Get.toNamed(AppRoutes.savedQues);
              },
              leading: const Icon(
                Icons.save,
                color: UIColors.lightBlack,
                size: 30,
              ),
              title: const Text(
                "الأسئلة المحفوظة",
                style:  UITextStyle.titleBold,
              ),
            ),
              ListTile(
                onTap: ()  {},
                leading: const Icon(
                  Icons.logout,
                  color: UIColors.lightBlack,
                  size: 30,
                ),
                title: const Text(
                  "تسجيل خروج",
                  style:  UITextStyle.titleBold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
