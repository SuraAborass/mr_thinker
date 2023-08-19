import 'package:flutter/material.dart';

import '../../Constants/colors.dart';

PreferredSizeWidget mainAppBar() {
  return AppBar(
    backgroundColor: UIColors.yellow,
    elevation: 0.0,
    leading:   Builder(builder: (context) {
      return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.dehaze_outlined,
            size: 30,
            color: UIColors.white,
          ));
    }),
    actions: [
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Image.asset(
            'assets/images/OIP-removebg-preview.png',
          ),
        ),
      )
    ],
  );
}