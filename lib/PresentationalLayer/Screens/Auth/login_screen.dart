import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/routes.dart';
import '../../../Constants/text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                alignment: Alignment.center,
                child:  Text("مرحباً بعودتك!", style: UITextStyle.titleBold.copyWith(fontSize: 25 )),
              ),
              const SizedBox(height: 30,),
                Center(
                child:  Container(width: 150,height: 150,
                    decoration: const BoxDecoration(
                  image: DecorationImage(image:  AssetImage("assets/images/hand-clapping.png",) )
                )),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                style: UITextStyle.titleBold,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: UIColors.white,
                  border: const OutlineInputBorder(),
                  hintText: 'أدخل رقم الهاتف أو الايميل الخاص بك',
                  hintStyle: UITextStyle.bodyNormal.copyWith(fontSize: 14),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: UIColors.yellow),
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
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                      color: UIColors.lightBlack,
                      onPressed: () {togglePasswordVisible();},
                    ),
                    border: const OutlineInputBorder(),
                    hintText: 'أدخل كلمة المرور الخاصة بك',
                    hintStyle: UITextStyle.bodyNormal.copyWith(fontSize: 14),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: UIColors.yellow),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: UIColors.yellow)),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !passwordVisible.value,
                  maxLines: 1,
                ),
              const SizedBox(
                height: 40,
              ),
              MaterialButton(
                height: 56,
                minWidth: Get.width,
                color: UIColors.yellow,
                shape: const RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0))),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Text('تسجيل الدخول', style: UITextStyle.titleBold.copyWith(color: UIColors.white,fontSize: 22))
                  ],
                ),
                onPressed: () {Get.toNamed(AppRoutes.homeScreen);},
              ),
              const SizedBox( height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                      'ليس لديك حساب؟',
                      style: UITextStyle.titleBold.copyWith(fontSize: 14)),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.registerScreen);
                    },
                    child: Text(
                        ' أنشىء حسابك من هنا',
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
