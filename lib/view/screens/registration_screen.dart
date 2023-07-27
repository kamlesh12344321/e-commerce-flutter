import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../model/login_screen_UI_model.dart';
import '../../res/string_constents.dart';
import '../../utils/routes/routes_name.dart';
import '../../utils/utils.dart';
import '../../view_model/auth_view_model.dart';
import '../components/buttons/custom_elevated_button.dart';
import '../components/column/column_items.dart';
import '../components/image_view/image_view_login_banner.dart';
import '../components/test_widget/CommonTextView.dart';
import '../edit_fields/edit_field_name.dart';
import '../components/image_view/image_view_login.dart';
import '../components/row/row_component.dart';

late List<Data> loginUiResponseList = [];


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final myEmailController = TextEditingController();
  final myPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    Future<List<Data>> getJson() async {
      final String response =
      await rootBundle.loadString('assets/registration/registration.json');
      final data = await json.decode(response);
      var rest = data['data'] as List<dynamic>;
      print(rest);
      loginUiResponseList = rest
          .map<Data>((json) => Data.fromJson(json as Map<String, dynamic>))
          .toList();
      print("List Size: ${loginUiResponseList.length}");
      return loginUiResponseList;
    }

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

            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (var item in items) ...[
                      if (item.type == StringConstents.image_type) ...[
                        ImageViewLogin(imageData: item)
                      ] else if (item.type == StringConstents.image_type_banner) ...[
                        ImageViewLoginBanner(imageData: item)
                      ]  else if (item.type == StringConstents.row_item) ...[
                        RowComponent(rowItems: item.rowItems!),
                      ]  else if(item.type == StringConstents.sized_box) ...[
                        SizedBox(
                          height: item.height!.toDouble(),
                          width: item.width!.toDouble(),
                        )
                      ] else if (item.type == StringConstents.column_item) ...[
                        ColumnItemComponent(
                          columnData: item.columnItems!,
                          from: StringConstents.fromRegistration,
                          emailController: myEmailController,
                          passwordController: myPasswordController,
                        ),
                      ] else if (item.type ==
                          StringConstents.elevated_button) ...[
                        if (item.position!.horizontalPosition! ==
                            "center_bottom") ...[
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              color: Colors.white,
                              margin: const EdgeInsets.only(
                                  left: 20, top: 0, right: 20, bottom: 5),
                              height: item.height!.toDouble(),
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                onPressed: () {
                                  String email = myEmailController.text;
                                  String password = myPasswordController.text;
                                  bool isEmailValid = Utils.isEmailValid(email);
                                  if (isEmailValid && password.isNotEmpty) {
                                    Navigator.pushNamed(context, RoutesName.home);
                                  } else {
                                    Utils.toastMessage(
                                        "Please fill required fields");
                                  }
                                },
                                child: const Text("Login"),
                              ),
                            ),
                          ),
                        ]
                      ] else if (item.type == StringConstents.text) ...[
                        CommonTxtView(data: item)
                      ]
                    ]
                  ]),

            );
          }
          return Container();
        },
      ),
    );
  }
}
