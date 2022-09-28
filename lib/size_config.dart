import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  //get proportionate height as per screen size
  getProportionateScreenHeight(double inputHeight) {
    double screenHeight = SizeConfig.screenHeight;
  //  896 is the layout height that the designer use
  //  of Iphone 11
    return (inputHeight / 896.0) * screenHeight;
  }

  //Get the proportionate width as per screen size
  static getProportionateScreenWidth(double inputWidth) {
    double screenWidth = SizeConfig.screenWidth;

    return (inputWidth / 414.0) * screenWidth;
  }

}