import 'package:flutter/material.dart';

import 'app_size.dart';

class AppSpacer {
  AppSpacer._();
  static SizedBox customSpacerH(double height) => SizedBox(height: height);
  static SizedBox customSpacerW(double width) => SizedBox(width: width);

  static const SizedBox spacerH1 = SizedBox(height: 1.0);
  static const SizedBox spacerH5 = SizedBox(height: AppSizes.size5);
  static const SizedBox spacerH10 = SizedBox(height: AppSizes.size10);
  static const SizedBox spacerH15 = SizedBox(height: AppSizes.size15);
  static const SizedBox spacerH20 = SizedBox(height: AppSizes.size20);
  static const SizedBox spacerH25 = SizedBox(height: AppSizes.size25);
  static const SizedBox spacerH30 = SizedBox(height: AppSizes.size30);
  static const SizedBox spacerH35 = SizedBox(height: AppSizes.size35);
  static const SizedBox spacerH40 = SizedBox(height: AppSizes.size40);
  static const SizedBox spacerH45 = SizedBox(height: AppSizes.size45);
  static const SizedBox spacerH50 = SizedBox(height: AppSizes.size50);
  static const SizedBox spacerH100 = SizedBox(height: AppSizes.size50 * 2);
  static const SizedBox spacerH150 = SizedBox(height: AppSizes.size50 * 3);
  static const SizedBox spacerH200 = SizedBox(height: AppSizes.size50 * 4);

  static const SizedBox spacerW5 = SizedBox(width: AppSizes.size5);
  static const SizedBox spacerW10 = SizedBox(width: AppSizes.size10);
  static const SizedBox spacerW15 = SizedBox(width: AppSizes.size15);
  static const SizedBox spacerW20 = SizedBox(width: AppSizes.size20);
  static const SizedBox spacerW25 = SizedBox(width: AppSizes.size25);
  static const SizedBox spacerW30 = SizedBox(width: AppSizes.size30);
  static const SizedBox spacerW35 = SizedBox(width: AppSizes.size35);
  static const SizedBox spacerW40 = SizedBox(width: AppSizes.size40);
  static const SizedBox spacerW45 = SizedBox(width: AppSizes.size45);
  static const SizedBox spacerW50 = SizedBox(width: AppSizes.size50);
  static SizedBox spacerCustomH(double spacerHeight) =>
      SizedBox(height: spacerHeight);
  static SizedBox spacerCustomW(double spacerWidth) =>
      SizedBox(height: spacerWidth);
}
