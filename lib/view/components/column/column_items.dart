import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_flutter_new/model/login_screen_UI_model.dart';

import '../../../res/string_constents.dart';
import '../edit_field.dart';
import '../image_view/image_view_login.dart';

class ColumnItemComponent extends StatefulWidget {
  const ColumnItemComponent({super.key, required this.columnData });

  final List<Data> columnData;

  @override
  State<ColumnItemComponent> createState() => _ColumnItemComponentState();
}

class _ColumnItemComponentState extends State<ColumnItemComponent> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        alignment: Alignment.center,
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var item in widget.columnData) ...[
              if (item.type == StringConstents.image_type) ...[
                ImageViewLogin(imageData: item)
              ] else if (item.type == StringConstents.edit_field) ...[
                EditFieldTemplate(editTextData: item)
              ] else if(item.type == "text") ...[

                Text(item.subType.toString())
              ]
            ]
          ],
        )
    );
  }
}
