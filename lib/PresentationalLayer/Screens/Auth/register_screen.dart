import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/routes.dart';
import '../../../Constants/text_styles.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordVisible = false.obs;
    void togglePasswordVisible() {
      passwordVisible.value = !passwordVisible.value;
    }
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: UIColors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                alignment: Alignment.center,
                child: const Text(
                    "أنشىء حسابك الآن", style: UITextStyle.titleBold),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: const Text(
                    "لتتمكن من استخدام التطبيق",
                    style: UITextStyle.titleBold),
              ),
              const SizedBox(height: 50),
              TextFormField(
                style: UITextStyle.titleBold,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: UIColors.white,
                  border: const OutlineInputBorder(),
                  hintText: 'أدخل اسمك هنا',
                  hintStyle: UITextStyle.bodyNormal.copyWith(fontSize: 14),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2,
                        color: UIColors.yellow),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: UIColors.yellow)),
                ),
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: UITextStyle.titleBold,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: UIColors.white,
                  border: const OutlineInputBorder(),
                  hintText: 'أدخل الرقم أو الايميل الخاص بك',
                  hintStyle: UITextStyle.bodyNormal.copyWith(fontSize: 14),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2,
                        color: UIColors.yellow),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color:UIColors.yellow)),
                ),
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: UITextStyle.titleBold,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: UIColors.white,
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible.value
                        ? Icons.visibility_off
                        : Icons.visibility),
                    color: UIColors.lightBlack,
                    onPressed: () {togglePasswordVisible();},
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'أدخل كلمة المرور',
                  hintStyle: UITextStyle.bodyNormal.copyWith(fontSize: 14),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: UIColors.yellow),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color:UIColors.yellow)),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: passwordVisible.value,
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: UITextStyle.titleBold ,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: UIColors.white ,
                  hintText: 'أعد كتابة كلمة المرور',
                  hintStyle: UITextStyle.bodyNormal.copyWith(fontSize: 14),
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible.value
                        ? Icons.visibility_off
                        : Icons.visibility),
                    color: UIColors.lightBlack,
                    onPressed: () {togglePasswordVisible();},
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(width: 2, color: UIColors.yellow),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: UIColors.yellow)),
                ),
                keyboardType: TextInputType.visiblePassword,
                maxLines: 1,
              ),
              const SizedBox(height: 30,),
              MaterialButton(height: 56,
                minWidth: Get.width,
                color: UIColors.yellow ,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0))),
                onPressed: () {Get.toNamed(AppRoutes.homeScreen);},
                child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('إنشاء حساب', style: UITextStyle.titleBold.copyWith(color: UIColors.white,fontSize: 22))
                    ],
              ),),
              const SizedBox( height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'هل لديك حساب؟',
                      style: UITextStyle.titleBold.copyWith(fontSize: 14)),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.loginScreen);
                    },
                    child: Text(
                        ' سجل دخول',
                        style: UITextStyle.titleBold.copyWith(color: UIColors.yellow,fontSize: 14)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
