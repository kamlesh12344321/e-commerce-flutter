import 'package:flutter/material.dart';

import '../../model/login_screen_UI_model.dart';

class EditFieldEmail extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const EditFieldEmail(
      {super.key, required this.editTextData, required this.onChanged});

  final Data editTextData;

  @override
  State<EditFieldEmail> createState() => _EditFieldEmailState();
}

class _EditFieldEmailState extends State<EditFieldEmail> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when the widget is disposed.
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double? width;
    if (widget.editTextData.width == 0) {
      width = MediaQuery.of(context).size.width;
    } else {
      width = widget.editTextData.width?.toDouble();
    }

    return Padding(
        padding: EdgeInsets.only(
            left: widget.editTextData.margin!.marginStart!.toDouble(),
            right: widget.editTextData.margin!.marginEnd!.toDouble(),
            top: widget.editTextData.margin!.marginTop!.toDouble(),
            bottom: widget.editTextData.margin!.marginBottom!.toDouble()),
        child: SizedBox(
          height: widget.editTextData.height!.toDouble(),
          width: width,
          child: TextField(
            showCursor: true,
            controller: _controller,
            onChanged: widget.onChanged,
            cursorColor: hexToColor(
                widget.editTextData.editField!.background.toString()),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: hexToColor(
                        widget.editTextData.editField!.cornerRadiusColor
                            .toString(),
                      ),
                      width: widget.editTextData.editField!.cornerWidth!
                          .toDouble()),
                  borderRadius: BorderRadius.all(
                    Radius.circular(widget.editTextData.editField!.cornerRadius!
                        .toDouble()),
                  )),
              fillColor: hexToColor(
                  widget.editTextData.editField!.background.toString()),
              // labelText: widget.editTextData.editField!.levelText,
              hintText: widget.editTextData.editField!.hint,
              contentPadding: EdgeInsets.only(
                  left: widget.editTextData.editField!.textPadding!.toDouble()),
            ),
          ),
        ));

  }

  Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }
}
