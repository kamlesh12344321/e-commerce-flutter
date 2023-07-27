import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';
import 'package:flutter/material.dart';

class DestinationScreen extends StatefulWidget {
  const DestinationScreen({super.key});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {


  @override
  Widget build(BuildContext context) {
    var argument = ModalRoute.of(context)?.settings.arguments as ItemAction;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text(argument.api.toString()),),
    );
  }
}
