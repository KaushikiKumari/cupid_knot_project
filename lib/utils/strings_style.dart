import 'package:cupid_knot_project/utils/app_colors.dart';
import 'package:flutter/material.dart';

const appTitleStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'assets/fonts/OpenSans/OpenSans-Bold.ttf',
  color: AppColors.mainColor,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(6.0, 6.0),
      blurRadius: 3.0,
      color: Color.fromARGB(30, 0, 0, 0),
    ),
    Shadow(
      offset: Offset(8.0, 8.0),
      blurRadius: 8.0,
      color: Color.fromARGB(15, 0, 0, 15),
    ),
  ],
);

const normalBigTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 22,
);

const normalTextStyle = TextStyle(
  fontSize: 15,
);
const smallTextStyle = TextStyle(fontSize: 13, color: AppColors.dullTextColor);
const smallBlackTextStyle = TextStyle(fontSize: 13, color: Colors.black87);
const smallCyanTextStyle =
    TextStyle(fontSize: 13, color: Colors.cyan, fontWeight: FontWeight.w400);

const whiteNormalTextStyle = TextStyle(
  fontSize: 15,
  color: AppColors.backgroundColor,
);
const smallWhiteNormalTextStyle = TextStyle(
  fontSize: 13,
  color: AppColors.backgroundColor,
);

const appBarTitleStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'assets/fonts/OpenSans/OpenSans-Bold.ttf',
  color: AppColors.backgroundColor,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(6.0, 6.0),
      blurRadius: 3.0,
      color: Color.fromARGB(40, 0, 0, 0),
    ),
    Shadow(
      offset: Offset(8.0, 8.0),
      blurRadius: 10.0,
      color: Color.fromARGB(25, 0, 0, 25),
    ),
  ],
);
const altraSmallMainTextStyle = TextStyle(
  color: AppColors.mainColor,
  fontSize: 11,
);
const tabMainTextStyle = TextStyle(
  color: AppColors.mainColor,
  fontSize: 9,
);
const tabNormalTextStyle = TextStyle(
  color: AppColors.dullTextColor,
  fontSize: 9,
);
const tabNormalBlackTextStyle = TextStyle(
  color: Colors.black87,
  fontSize: 9,
);
const altraSmallTextStyle = TextStyle(
  color: Colors.black87,
  fontSize: 11,
);
const altraSmallWhiteTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 11,
);
const altraSmallGreyTextStyle = TextStyle(
  color: Colors.black54,
  fontSize: 11,
);
const mainColorTextStyle = TextStyle(
  color: AppColors.mainColor,
  fontSize: 13,
  fontWeight: FontWeight.w500,
);
const appBartitleStyle = TextStyle(
  fontSize: 16,
  letterSpacing: 0.5,
  color: AppColors.backgroundColor,
);
const appBablacktitleStyle = TextStyle(
  fontSize: 16,
  letterSpacing: 0.5,
  color: Colors.black87,
);
const redTextStyle = TextStyle(
  fontSize: 15,
  letterSpacing: 0.3,
  color: Colors.red,
);
const greentextStyle = TextStyle(
  fontSize: 15,
  letterSpacing: 0.3,
  color: Colors.green,
);
