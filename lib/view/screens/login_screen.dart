import 'package:ecommerce_flutter_new/res/app_url.dart';
import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:ecommerce_flutter_new/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    return  Scaffold(
      body:
          Center(
            child:  InkWell(
              onTap:(){
                Utils.flushBarErrorMessage("No Internet connection", context);
                Map data = {
                  "EmailOrMobile" : "email@email.com",
                  "password" : "abcd"
                };
                authViewModel.loginApi(data,AppUrls.token, context);
              },
              child: const Text("click Me", style: TextStyle(color: Colors.red),),
            ),
          )
    );
  }
}
