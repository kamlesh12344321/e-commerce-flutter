import 'package:flutter/material.dart';

class HeaderTitle extends StatefulWidget {
  final String headerTitle;
  const HeaderTitle({super.key, required this.headerTitle});

  @override
  State<HeaderTitle> createState() => _HeaderTitleState();
}

class _HeaderTitleState extends State<HeaderTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 16), child: Text(
      widget.headerTitle, style: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500
    ),
    ),);
  }
}
