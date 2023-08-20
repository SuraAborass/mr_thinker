import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/text_styles.dart';

class SavedQuestionItem extends StatelessWidget {
  const SavedQuestionItem({Key? key}) : super(key: key);

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
              Text("السؤال؟",style: UITextStyle.titleBold,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          width: 350,
          height: 80,
          decoration: BoxDecoration(
              color: UIColors.right,
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("الجواب الصحيح",style: UITextStyle.titleBold,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
