import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';
import 'package:flutter/material.dart';

class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({super.key});

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ItemAction;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text(args.api.toString()),),
    );
  }
}
