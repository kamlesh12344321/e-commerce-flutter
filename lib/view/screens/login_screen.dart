import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
          Center(
            child:  InkWell(
              onTap:(){
                Utils.flushBarErrorMessage("No Internet connection", context);
              },
              child: const Text("click Me", style: TextStyle(color: Colors.red),),
            ),
          )
    );
  }
}
