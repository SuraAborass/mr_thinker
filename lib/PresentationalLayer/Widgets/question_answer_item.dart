import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/text_styles.dart';
import '../../Constants/ui_styles.dart';

class QuestionAnswerItem extends StatelessWidget {
  const QuestionAnswerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 350,
          height: 80,
          decoration: BoxDecoration(
              color: UIColors.beige,
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               Text("ماهو إعراب كلمة قال في السطر الثاني؟",style: UITextStyle.titleBold,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        TextFormField( decoration: textFieldStyle.copyWith(
            fillColor: UIColors.lightBeige,
            hintText: " الجواب:"),
          maxLines: 2,
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
