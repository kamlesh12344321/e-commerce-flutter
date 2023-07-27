import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';
import 'package:ecommerce_flutter_new/view/components/test_widget/header_cta_explore.dart';
import 'package:ecommerce_flutter_new/view/components/test_widget/header_title_text.dart';
import 'package:flutter/material.dart';

class Headers extends StatefulWidget {
  final Header header;
  const Headers({super.key, required this.header});

  @override
  State<Headers> createState() => _HeadersState();
}

class _HeadersState extends State<Headers> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         if(widget.header.title!.isNotEmpty) ...[
           HeaderTitle(headerTitle: widget.header.title!)
         ] ,
        if (widget.header.ctaTitle!.isNotEmpty) ...[
           HeaderCtaText(ctaTitle: widget.header.ctaTitle!, itemAction: widget.header.action!)
         ]
      ],
    );
  }
}
