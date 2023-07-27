import 'package:ecommerce_flutter_new/model/login_screen_UI_model.dart';
import 'package:ecommerce_flutter_new/utils/routes/routes_name.dart';
import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:flutter/material.dart';
class CommonTxtView extends StatefulWidget {
  final Data data;
  const CommonTxtView({super.key, required this.data});

  @override
  State<CommonTxtView> createState() => _CommonTxtViewState();
}

class _CommonTxtViewState extends State<CommonTxtView> {

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Utils.widgetAlignment(widget.data.position!.horizontalPosition!),
      child: Container(
        margin: EdgeInsets.only(left: widget.data.margin!.marginStart!.toDouble(),
            right: widget.data.margin!.marginEnd!.toDouble(),
            top: widget.data.margin!.marginTop!.toDouble(),
            bottom: widget.data.margin!.marginBottom!.toDouble()),
        child: GestureDetector(
          onTap: (){
            if(widget.data.isEnabled!){
              Utils.flushBarErrorMessage("Navigate to register screen", context);
             Navigator.pushNamed(context, RoutesName.registration);
            }
          },
          child: Text(
            widget.data.subType!,
            style: TextStyle(
                color: Utils.fromHex(widget.data.textProperty!.textColor!),
                fontWeight: Utils.getTextFontWeight(widget.data.textProperty!.fontWeight!),
                fontSize: widget.data.textProperty!.fontSize!.toDouble(),
                letterSpacing: widget.data.textProperty!.letterSpacing!.toDouble()
            ),

          ),
        )
      )
    );
  }
}
