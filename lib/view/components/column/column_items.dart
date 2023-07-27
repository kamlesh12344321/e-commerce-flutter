import 'package:ecommerce_flutter_new/res/app_url.dart';
import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:ecommerce_flutter_new/view/edit_fields/edit_field_confirm_password.dart';
import 'package:ecommerce_flutter_new/view/edit_fields/edit_field_contact_number.dart';
import 'package:ecommerce_flutter_new/view/edit_fields/edit_field_email.dart';
import 'package:ecommerce_flutter_new/view/edit_fields/edit_field_name.dart';
import 'package:ecommerce_flutter_new/view/edit_fields/edit_field_password.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_flutter_new/model/login_screen_UI_model.dart';
import 'package:provider/provider.dart';
import '../../../res/string_constents.dart';
import '../../../utils/routes/routes_name.dart';
import '../../../view_model/auth_view_model.dart';
import '../image_view/image_view_login.dart';
import '../test_widget/CommonTextView.dart';

class ColumnItemComponent extends StatefulWidget {
  final String? from;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  const ColumnItemComponent(
      {super.key,
      this.columnData,
      this.from,
      this.emailController,
      this.passwordController});

  final List<Data>? columnData;

  @override
  State<ColumnItemComponent> createState() => _ColumnItemComponentState();
}

class _ColumnItemComponentState extends State<ColumnItemComponent> {
  String textFieldEmailValue = '';
  String textFieldPasswordValue = '';
  String textFieldNameValue = '';
  String textFieldConfirmPasswordValue = '';
  String textFieldContactNumberValue = '';
  String buttonTitle = '';


  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);

    return Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var item in widget.columnData!) ...[
              if (item.type == StringConstents.image_type) ...[
                ImageViewLogin(imageData: item)
              ] else if (item.type == StringConstents.sized_box) ...[
                SizedBox(
                  height: item.height!.toDouble(),
                  width: item.width!.toDouble(),
                )
              ] else if (item.type == StringConstents.edit_field) ...[
                if (item.subType == "Email") ...[
                  EditFieldEmail(
                    editTextData: item,
                    onChanged: (value) {
                      setState(() {
                        textFieldEmailValue = value;
                      });
                    },
                  )
                ] else if (item.subType == "password") ...[
                  EditFieldPassword(
                    editTextData: item,
                    onChanged: (value) {
                      setState(() {
                        textFieldPasswordValue = value;
                      });
                    },
                  )
                ]  else if (item.subType == "Name") ...[
                  EditFieldName(
                    editTextData: item,
                    onChanged: (value) {
                      setState(() {
                        textFieldNameValue = value;
                      });
                    },
                  )
                ] else if (item.subType == "Confirm Password") ...[
                  EditFieldConfirmPassword(
                    editTextData: item,
                    onChanged: (value) {
                      setState(() {
                        textFieldConfirmPasswordValue = value;
                      });
                    },
                  )
                ] else if (item.subType == "Contact Number") ...[
                  EditFieldContactNumber(
                    editTextData: item,
                    onChanged: (value) {
                      setState(() {
                        textFieldContactNumberValue = value;
                      });
                    },
                  )
                ]
              ] else if (item.type == "text") ...[
                CommonTxtView(data: item)
              ] else if (item.type == StringConstents.elevated_button) ...[
                if (item.position!.horizontalPosition! == "center_bottom") ...[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                      margin: const EdgeInsets.only(
                          left: 16, top: 0, right: 16, bottom: 5),
                      height: item.height!.toDouble(),
                      width: MediaQuery.of(context).size.width,
                      child: SizedBox(
                        height: item.height!.toDouble(),
                        width: Utils.getWidth(item.width!, context),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(100),
                              backgroundColor: Utils.fromHex("#55AB60"),
                            shape:  RoundedRectangleBorder(
                              borderRadius:  BorderRadius.circular(10.0),
                            ),),
                          onPressed: () {
                            if (widget.from == StringConstents.fromLogin) {
                              bool isEmailValid =
                                  Utils.isEmailValid(textFieldEmailValue);
                              if (isEmailValid &&
                                  textFieldPasswordValue.isNotEmpty) {
                                Navigator.pushNamed(context, RoutesName.home);
                              } else {
                                Utils.flushBarErrorMessage(
                                    "Please fill required fields", context);
                              }
                            } else if (widget.from ==
                                StringConstents.fromRegistration) {
                              if(textFieldEmailValue.isNotEmpty && textFieldPasswordValue.isNotEmpty && textFieldNameValue.isNotEmpty && textFieldContactNumberValue.isNotEmpty){
                                var registrationData = {
                                  "email": textFieldEmailValue,
                                  "password": textFieldPasswordValue,
                                  "first_name" : textFieldNameValue,
                                  "last_name" : "",
                                  "login_mode" : "",
                                  "mobile" : textFieldContactNumberValue
                                };
                                authViewModel.registrationApi(registrationData, AppUrls.token, context);
                              } else {
                                Utils.flushBarErrorMessage("Please fill all required fields", context);
                              }

                            }
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ],
          ],
        ));
  }
}
