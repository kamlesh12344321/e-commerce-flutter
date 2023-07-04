
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:another_flushbar/flushbar.dart';
class Utils {
 static toastMessage(String msg) {
    Fluttertoast.showToast(msg: msg);
  }

  static snakeBar(String message, BuildContext context){
   return ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(content: Text(message),
     backgroundColor: Colors.red,)
   );
  }

  static void flushBarErrorMessage(String message, BuildContext context){

   showFlushbar(context: context,
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
         icon: const Icon(Icons.error, size: 28, color: Colors.white,),
       )..show(context),
   );
  }
}