import 'package:ecommerce_flutter_new/model/login_screen_UI_model.dart';
import 'package:flutter/material.dart';

class CustomNonExpElevatedButton extends StatefulWidget {
  const CustomNonExpElevatedButton({super.key, required this.buttonItem});

  final Data buttonItem;

  @override
  State<CustomNonExpElevatedButton> createState() => _CustomNonExpElevatedButton();
}

class _CustomNonExpElevatedButton extends State<CustomNonExpElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed:() {}, child: const Text("Login non expanded"));
  }
}
