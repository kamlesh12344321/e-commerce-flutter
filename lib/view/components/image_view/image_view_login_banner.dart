import 'package:ecommerce_flutter_new/model/login_screen_UI_model.dart';
import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:flutter/material.dart';

class ImageViewLoginBanner extends StatefulWidget {
  const ImageViewLoginBanner({super.key, required this.imageData  });
  final Data imageData;

  @override
  State<ImageViewLoginBanner> createState() => _ImageViewLoginBannerState();
}

class _ImageViewLoginBannerState extends State<ImageViewLoginBanner> {
  @override
  Widget build(BuildContext context) {
    double? width;
    if(widget.imageData.width == 0){
      width = MediaQuery.of(context).size.width;
    } else {
      width = widget.imageData.width?.toDouble();
    }
    return
        Container(
            height: widget.imageData.height?.toDouble(),
            width: width,
            color: Colors.white,
            alignment:Alignment.topCenter,
            child: Image(
              width: width,
              alignment: Alignment.center,
              image: const AssetImage('assets/images/login_page_banner.png'),
            )

    );
  }

}

