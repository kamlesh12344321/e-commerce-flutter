import 'package:flutter/material.dart';

class ECSearchView extends StatefulWidget {
  const ECSearchView({super.key});

  @override
  State<ECSearchView> createState() => _ECSearchViewState();
}

class _ECSearchViewState extends State<ECSearchView> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      margin: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 20),
      child: const TextField(
        decoration: InputDecoration(
            labelText: "Search",
            hintText: "Search",
            prefixIcon: Icon(Icons.search),

            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)))),
      ),
    );
  }
}
