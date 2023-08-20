import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/text_styles.dart';

class ChoiceQuestionsItem extends StatelessWidget {
  const ChoiceQuestionsItem({Key? key}) : super(key: key);

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
        Container(
          width: 350,
          height: 80,
          decoration: BoxDecoration(
              color: UIColors.lightBeige,
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("a. مفعول لأجله",style: UITextStyle.titleBold,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          width: 350,
          height: 80,
          decoration: BoxDecoration(
              color: UIColors.lightBeige,
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("b. فاعل",style: UITextStyle.titleBold,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          width: 350,
          height: 80,
          decoration: BoxDecoration(
              color: UIColors.lightBeige,
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("c. نعت",style: UITextStyle.titleBold,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          width: 350,
          height: 80,
          decoration: BoxDecoration(
              color: UIColors.lightBeige,
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("d. فعل ماض",style: UITextStyle.titleBold,),
            ],
          ),
        ),
        const SizedBox(height: 20,),

      ],
    );
  }
}
