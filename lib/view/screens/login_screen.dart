import 'dart:convert';

import 'package:ecommerce_flutter_new/res/app_url.dart';
import 'package:ecommerce_flutter_new/res/string_constents.dart';
import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:ecommerce_flutter_new/view/components/buttons/custom_elevated_button.dart';
import 'package:ecommerce_flutter_new/view/components/buttons/custom_non_expanded_button.dart';
import 'package:ecommerce_flutter_new/view/components/column/column_items.dart';
import 'package:ecommerce_flutter_new/view/components/edit_field.dart';
import 'package:ecommerce_flutter_new/view/components/image_view/image_view_login.dart';
import 'package:ecommerce_flutter_new/view/components/row/row_component.dart';
import 'package:ecommerce_flutter_new/view_model/auth_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as developer;

import '../../model/login_screen_UI_model.dart';

late List<Data> loginUiResponseList = [];

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<List<Data>> getJson() async {
    final String response =
        await rootBundle.loadString('assets/login/image_app.json');
    final data = await json.decode(response);
    var rest = data['data'] as List<dynamic>;
    print(rest);
    loginUiResponseList = rest
        .map<Data>((json) => Data.fromJson(json as Map<String, dynamic>))
        .toList();
    print("List Size: ${loginUiResponseList.length}");
    return loginUiResponseList;
  }

  @override
  Widget build(BuildContext context) {
    // final authViewModel = Provider.of<AuthViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: getJson(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            List<Data> items = snapshot.data!;

            return Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              for (var item in items) ...[
                if (item.type == StringConstents.image_type) ...[
                  ImageViewLogin(imageData: item)
                ] else if (item.type == StringConstents.edit_field) ...[
                  EditFieldTemplate(editTextData: item)
                ] else if (item.type == StringConstents.row) ...[
                  Spacer(),
                 /* Align(
                    alignment: Alignment.center,*/
                   /* child: */ RowComponent(rowItems: item.rowItems!),
                  /*)*/

                ]  else if (item.type == StringConstents.column) ...[
                  Spacer(),
                  /*Expanded(
                    flex: 3,
                    child:*/ ColumnItemComponent(columnData: item.columnItems!),
                  /*)*/

                ]
                else if (item.type == StringConstents.elevated_button) ...[
                  if (item.position!.horizontalPosition! ==
                      "center_bottom") ...[
                    Spacer(),
                        Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        margin: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 30),
                        height: item.height!.toDouble(),
                        width: MediaQuery.of(context).size.width,
                        child: const CustomElevatedButton(
                        ),
                    ))
                  ]
                ] else if(item.type == "text") ...[

                  Text(item.subType.toString())
                  ]
              ]
            ]);
          }
          return Container();
        },
      ),
    );
  }
}
