import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/colors.dart';
import '../../Constants/routes.dart';
import '../../Constants/text_styles.dart';
import '../../main.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BottomNavigationBar(
        currentIndex: MyApp.currentPage,
        onTap: (index) {
          MyApp.currentPage = index;
          switch (index) {
            case 0:
              Get.toNamed(AppRoutes.homeScreen);
              break;
            case 1:
              Get.toNamed(AppRoutes.profileScreen);
              break;
            default:
          }
        },
        backgroundColor: UIColors.navBarColor,
        selectedItemColor: UIColors.navBarSelectedItem,
        unselectedItemColor:UIColors.iconColor,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: UITextStyle.boldSmall,
        unselectedLabelStyle: UITextStyle.normalSmall,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 35,),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.person,size: 35),
            label: "الملف الشخصي",
          ),
        ],
      ),
    );
  }
}
