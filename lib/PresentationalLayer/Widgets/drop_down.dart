import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_thinker/Constants/routes.dart';
import '../../Constants/colors.dart';
import '../../Constants/text_styles.dart';
import '../../Constants/ui_styles.dart';


class CustomDropDownFormField extends StatelessWidget {
  const CustomDropDownFormField({Key? key,required this.items,
    this.value,
    required this.onChanged,}) : super(key: key);

  final List<String> items;
  final String? value;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButtonFormField(
        value: value ?? items[0],
        isDense: true,
        isExpanded: true,
        decoration: textFieldStyle,
        style: UITextStyle.bodyNormal,
        focusColor: UIColors.black,
        dropdownColor: UIColors.white,
        icon: const Icon(
          Icons.keyboard_arrow_down_sharp,
          color: UIColors.yellow,
          size: 25,
        ),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem(
            value: value,
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(onTap: (){
                if(value == 'فراغات'||value == 'أسئلة تقليدية' ) {
                  Get.toNamed(AppRoutes.tradQues);
                }
                else {
                  Get.toNamed(AppRoutes.choiceQues);
                }
              },
                  child: Text(value,style: UITextStyle.bodyNormal.copyWith(fontSize: 18,color: UIColors.black))),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}

