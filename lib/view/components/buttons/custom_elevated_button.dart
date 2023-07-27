import 'package:ecommerce_flutter_new/res/string_constents.dart';
import 'package:ecommerce_flutter_new/utils/routes/routes_name.dart';
import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final String from;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  const CustomElevatedButton({super.key, required this.from, this.emailController, this.passwordController});

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  String buttonTitle = "";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          if (widget.from == StringConstents.fromLogin) {
            Navigator.pushNamed(context, RoutesName.home);
            // String email = widget.emailController!.text;
            // String password = widget.passwordController!.text;
            // bool isEmailValid = Utils.isEmailValid(email);
            //
            // if(isEmailValid && password.isNotEmpty){
            //   Navigator.pushNamed(context, RoutesName.home);
            // } else {
            //   Utils.toastMessage("Please fill required fields");
            // }
          } else if (widget.from == StringConstents.fromRegistration) {
            Navigator.pushNamed(context, RoutesName.home);
          }
        },
        child: const Text("Login"));
  }
}
