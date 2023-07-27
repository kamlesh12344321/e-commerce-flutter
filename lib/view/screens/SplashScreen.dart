import 'dart:convert';

import 'package:ecommerce_flutter_new/model/login_screen_UI_model.dart';
import 'package:ecommerce_flutter_new/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/image_view/image_view_login.dart';


late List<Data> SplashResponse = [];
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  Future<List<Data>> getJson() async {
    final String response =
    await rootBundle.loadString('assets/splash/splash.json');
    final data = await json.decode(response);
    var rest = data['data'] as List<dynamic>;
    SplashResponse = rest
        .map<Data>((json) => Data.fromJson(json as Map<String, dynamic>))
        .toList();
    return SplashResponse;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder(
        future: getJson(),
        builder: (context, snapshot) {
         if(snapshot.hasData){
           return Center(
             child: ImageViewLogin(imageData: snapshot.data![0]),
           );
         }
         return const Center(
             child: Text("No data found"),
         );
        },

      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome()  async{
    await Future.delayed(const Duration(seconds: 3),(){});
    Navigator.pushNamed(context, RoutesName.login);
  }
}
