import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ECTopBanner extends StatefulWidget {
  const ECTopBanner({super.key , required this.childData});
   final Children childData;
  @override
  State<ECTopBanner> createState() => _ECTopBannerState();
}

class _ECTopBannerState extends State<ECTopBanner> {

  @override
  Widget build(BuildContext context) {
    var url = widget.childData.value!.banner4x!.toString();
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: 16, right: 16),
        height: 150,
        decoration: const BoxDecoration(
          color: Color(0xFFF2FCF4),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      child:  Lottie.network(url, repeat: true)
    );
  }
}
