import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';
import 'package:ecommerce_flutter_new/view/components/templates/template_02.dart';
import 'package:flutter/material.dart';

class NSGridView extends StatefulWidget {
  final List<Children> childrenList;
  final int crossAxisCount;
  const NSGridView({super.key, required this.childrenList, required this.crossAxisCount});

  @override
  State<NSGridView> createState() => _NSGridViewState();
}

class _NSGridViewState extends State<NSGridView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(),
        itemCount: widget.childrenList.length,
        itemBuilder: (context, index){
          return Template_02(childrenData: widget.childrenList[index]);
        }
    );
  }
}
