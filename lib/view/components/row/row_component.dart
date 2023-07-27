import 'package:flutter/material.dart';
import 'package:ecommerce_flutter_new/model/login_screen_UI_model.dart';

import '../../../res/string_constents.dart';
import '../../edit_fields/edit_field_name.dart';
import '../image_view/image_view_login.dart';
import '../test_widget/CommonTextView.dart';


class RowComponent extends StatefulWidget {
  const RowComponent({super.key, required this.rowItems});

  final List<Data> rowItems;

  @override
  State<RowComponent> createState() => _RowComponentState();
}

class _RowComponentState extends State<RowComponent> {
  @override
  Widget build(BuildContext context) {
    return
    SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var item in widget.rowItems) ...[
            if (item.type == StringConstents.image_type) ...[
              ImageViewLogin(imageData: item)
            ]else if (item.type == StringConstents.text) ...[
              CommonTxtView(data: item)
            ]
          ]
        ],
      ) ,
    );


  }
}
