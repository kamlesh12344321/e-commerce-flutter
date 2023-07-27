
import 'package:ecommerce_flutter_new/repository/auth_repository.dart';
import 'package:ecommerce_flutter_new/res/string_constents.dart';
import 'package:ecommerce_flutter_new/utils/pref.dart';
import 'package:ecommerce_flutter_new/utils/routes/routes_name.dart';
import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:shared_preferences/shared_preferences.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();

  bool _loading = false;


  bool get loading => _loading;

   setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }
  Future<dynamic> registrationApi(dynamic data, String token, BuildContext context) async {
     setLoading(true);
     _myRepo.registrationApi(token, data).then((value) {
       setLoading(false);
       if(value['status']){
         SharedPrefUtil().isLoggedIn(StringConstents.isLoggedIn, true);
         SharedPrefUtil().saveString(StringConstents.user_token, value['data']['access_token']);
         Navigator.pushNamed(context, RoutesName.home);
       } else {
         Utils.flushBarErrorMessage(value['msg'], context);
       }
       if (kDebugMode) {
         print(value.toString());
       }
     }).onError((error, stackTrace) {
       setLoading(false);
       Utils.flushBarErrorMessage(error.toString(), context);
       if (kDebugMode) {
         print(error.toString());
       }
     });
  }

  Future<void> loginApi(dynamic data,String token, BuildContext context) async{
    setLoading(true);
    _myRepo.loginApi(token,data).then((value){
      developer.log('login_success', name:"true");
      Utils.flushBarErrorMessage("Login successful", context);
      setLoading(false);
      Navigator.pushNamed(context, RoutesName.home);
      if (kDebugMode) {
        print(value.toString());
      }

    }).onError((error, stackTrace){
      setLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
     if (kDebugMode) {
       print(error.toString());
     }
    });
  }
}