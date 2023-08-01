import 'dart:convert';

import 'package:ecommerce_flutter_new/data/LoginPractice/loginData.dart';
import 'package:ecommerce_flutter_new/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List<Data> loginUiResponseList = [];

class LoginScreenPractice extends StatefulWidget {
  const LoginScreenPractice({super.key});

  @override
  State<LoginScreenPractice> createState() => _LoginScreenPracticeState();
}

class _LoginScreenPracticeState extends State<LoginScreenPractice> {
  Future<List<Data>> getJson() async {
    final String response =
        await rootBundle.loadString('assets/practice/PracticeTemplate.json');
    final data = await json.decode(response);
    var rest = data['data'] as List<dynamic>;
    if (kDebugMode) {
      print(rest);
    }
    loginUiResponseList = rest
        .map<Data>((json) => Data.fromJson(json as Map<String, dynamic>))
        .toList();
    if (kDebugMode) {
      print("List Size: ${loginUiResponseList.length}");
    }
    return loginUiResponseList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getJson(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            List<Data> items = snapshot.data!;

            return Stack(
              children: [
                for (var item in items[0].children!) ...[
                  if (item.type == "image_background") ...[
                    Image.network(
                      item.imageUrl!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ] else if (item.type == "gradiant") ...[
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            // Transparent color at the top
                            Colors.black.withOpacity(0.1),
                            // Semi-transparent black color at the bottom
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ] else if (item.type == "column") ...[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var child in item.columnItems!) ...[
                          if (child.type == "image") ...[
                            Container(
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.only(top: 100),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Image.network(
                                  'https://i.stack.imgur.com/8CNWw.jpg',
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ),
                          ] else if (child.type == "sized_box") ...[
                            SizedBox(
                              height: child.height!.toDouble(),
                            ),
                          ] else if (child.type == "text") ...[
                            Container(
                              margin: EdgeInsets.only(
                                  left: child.margin!.marginStart!.toDouble(),
                                  right: child.margin!.marginEnd!.toDouble()),
                              child: Text(
                                child.subType!.toString(),
                                style: TextStyle(
                                  color: Utils.fromHex(
                                      child.textProperty!.textColor!),
                                  // Set the text color to white
                                  fontSize:
                                      child.textProperty!.fontSize!.toDouble(),
                                  letterSpacing: child
                                      .textProperty!.letterSpacing!
                                      .toDouble(),
                                  fontWeight: Utils.getTextFontWeight(
                                      child.textProperty!.fontWeight!),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ] else if (child.type == "container") ...[
                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: child.height!.toDouble(),
                                margin: EdgeInsets.only(
                                    left: child.margin!.marginStart!.toDouble(),
                                    right: child.margin!.marginEnd!.toDouble()),
                                padding:
                                    const EdgeInsets.only(left: 16, right: 16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child:  Row(
                                  children: <Widget>[
                                    for(var rowItem in  child.rowItems!)...[
                                      if(rowItem.type =="icon")...[
                                        const Visibility(
                                          visible: true,
                                          child:Icon(
                                            Icons.g_translate,
                                            size: 26.0,
                                          ) ,
                                        ),
                                      ] else if(rowItem.type == "text")...[
                                        Expanded(
                                          child: Text(
                                            rowItem.subType!,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Utils.fromHex(rowItem.textProperty!.textColor!),
                                                fontWeight: Utils.getTextFontWeight(rowItem.textProperty!.fontWeight!),
                                                fontSize: rowItem.textProperty!.fontSize!.toDouble()),
                                          ),
                                        ),
                                      ]
                                    ]



                                  ],
                                )),
                          ]
                        ]
                      ],
                    )
                  ]
                ]
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
