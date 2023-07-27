import 'dart:convert';

import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';
import 'package:ecommerce_flutter_new/res/app_url.dart';
import 'package:ecommerce_flutter_new/res/string_constents.dart';
import 'package:ecommerce_flutter_new/view/components/gridview/ns_grid_view.dart';
import 'package:ecommerce_flutter_new/view/components/headers/headers.dart';
import 'package:ecommerce_flutter_new/view/components/viewpagers/NSHomePageView.dart';
import 'package:ecommerce_flutter_new/view_model/home_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewModel homeViewModel = HomeViewModel();
  late Future<ExploreHome> futureHome;

  @override
  void initState() {
    // homeViewModel.homeExploreApi( AppUrls.token, context);
    futureHome = fetchHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder<ExploreHome>(
          future: futureHome,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              List<Data> homeData = snapshot.data!.data!;
              return Column(
                children: [
                  for (var item in homeData) ...[
                    if (item.viewGroupType ==
                        StringConstents.viewGroupTypeViewPager) ...[
                      Container(
                        height: 150,
                        margin: const EdgeInsets.only(top: 30),
                        child: NsHomeViewPager(
                          pagerItems: item.children!,
                        ),
                      ),
                    ] else if (item.viewGroupType ==
                        StringConstents.viewGroupTypeHorizontalGrid) ...[
                      if (item.gridColumn != null) ...[
                        Column(
                          children: [
                            Headers(header: item.header!),
                            SizedBox(
                              height: 135,
                              width: MediaQuery.of(context).size.width,
                              child: NSGridView(
                                  childrenList: item.children!,
                                  crossAxisCount: item.gridColumn as int),
                            ),
                          ],
                        )

                      ],
                    ],
                  ],
                ],
              );
            }
            return Container();
          },
        ));
  }

  Future<ExploreHome> fetchHome() async {
    setHeaders() => {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': 'Bearer ${AppUrls.token}'
        };
    final response =
        await http.get(Uri.parse(AppUrls.homeExplore), headers: setHeaders());

    if (response.statusCode == 200) {
      return ExploreHome.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
