import 'dart:ffi';

import 'package:another_flushbar/flushbar_route.dart';
import 'package:ecommerce_flutter_new/res/string_constents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:another_flushbar/flushbar.dart';

class Utils {

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

 static bool isEmailValid(String email){
    if(email.isEmpty) {
      return false;
    }
    const String emailPattern =
        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    final RegExp regExp = RegExp(emailPattern);
    return regExp.hasMatch(email);
  }

  static toastMessage(String msg) {
    Fluttertoast.showToast(msg: msg);
  }

  static snakeBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: const EdgeInsets.all(10),
        flushbarPosition: FlushbarPosition.BOTTOM,
        borderRadius: BorderRadius.circular(20),
        message: message,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.red,
        reverseAnimationCurve: Curves.easeOut,
        positionOffset: 20,
        icon: const Icon(
          Icons.error,
          size: 28,
          color: Colors.white,
        ),
      )..show(context),
    );
  }
  static double getWidth (num widthInput, BuildContext context) {
    double? width;
    if (widthInput == 0) {
      width = MediaQuery.of(context).size.width;
    } else {
      width = widthInput.toDouble();
    }
    return width;
  }

  static FontWeight getTextFontWeight(String fontWeightInput) {
    FontWeight fontWeight = FontWeight.normal;
    switch(fontWeightInput){
      case "bold":
        {
          fontWeight = FontWeight.bold;
          return fontWeight;
        }
      case "w100":
        {
          fontWeight = FontWeight.w100;
          return fontWeight;
        }
      case "w200":
        {
          fontWeight = FontWeight.w200;
          return fontWeight;
        }
      case "w300":
        {
          fontWeight = FontWeight.w300;
          return fontWeight;
        }
      case "w400":
        {
          fontWeight = FontWeight.w400;
          return fontWeight;
        }
      case "w500":
        {
          fontWeight = FontWeight.w500;
          return fontWeight;
        }
      case "w600":
        {
          fontWeight = FontWeight.w600;
          return fontWeight;
        }
      case "w700":
        {
          fontWeight = FontWeight.w700;
          return fontWeight;
        }
      case "w800":
        {
          fontWeight = FontWeight.w800;
          return fontWeight;
        }
      case "w900":
        {
          fontWeight = FontWeight.w900;
          return fontWeight;
        }
      default:
        {
          fontWeight = FontWeight.normal;
          return fontWeight;
        }
    }
  }

  static Alignment widgetAlignment(String alignment) {
    Alignment finalAlignment = Alignment.center;
    switch (alignment) {
      case "top_left":
        {
          finalAlignment = Alignment.topLeft;
          return finalAlignment;
        }
      case "top_right":
        {
          finalAlignment = Alignment.topRight;
          return finalAlignment;
        }
      case "bottom_left":
        {
          finalAlignment = Alignment.bottomLeft;
          return finalAlignment;
        }
      case "bottom_right":
        {
          finalAlignment = Alignment.bottomRight;
          return finalAlignment;
        }
      case "bottom_center":
        {
          finalAlignment = Alignment.bottomCenter;
          return finalAlignment;
        }
      case "center_left":
        {
          finalAlignment = Alignment.centerLeft;
          return finalAlignment;
        }
      case "center_right":
        {
          finalAlignment = Alignment.centerRight;
          return finalAlignment;
        }
      default:
        finalAlignment;
    }
    return finalAlignment;
  }
}
