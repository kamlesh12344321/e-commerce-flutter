import 'package:ecommerce_flutter_new/model/login_screen_UI_model.dart';
import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:flutter/material.dart';

class ImageViewLogin extends StatefulWidget {
  const ImageViewLogin({super.key, required this.imageData  });
  final Data imageData;

  @override
  State<ImageViewLogin> createState() => _ImageViewLoginState();
}

class _ImageViewLoginState extends State<ImageViewLogin> {
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
            margin: EdgeInsets.only(left: widget.imageData.margin!.marginStart!.toDouble(),
                right: widget.imageData.margin!.marginEnd!.toDouble(),
                top: widget.imageData.margin!.marginTop!.toDouble(),
                bottom: widget.imageData.margin!.marginBottom!.toDouble()),
            alignment:Utils.widgetAlignment(widget.imageData.position!.horizontalPosition!),
            child: Image(
              width: width,
              alignment: Alignment.center,
              image: NetworkImage(widget.imageData.imageUrl!),
            )

    );
  }

}

