import 'package:ecommerce_flutter_new/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../../model/home/ExploreHome.dart';

class HeaderCtaText extends StatefulWidget {
  final String ctaTitle;
  final ItemAction itemAction;

  const HeaderCtaText(
      {super.key, required this.ctaTitle, required this.itemAction});

  @override
  State<HeaderCtaText> createState() => _HeaderCtaTextState();
}

class _HeaderCtaTextState extends State<HeaderCtaText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, RoutesName.destinationScreen,
          arguments: widget.itemAction);
        },
        child:  Text(
          widget.ctaTitle,
          style: const TextStyle(
              color: Colors.green,
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700),
        ),
      )
    );
  }
}
