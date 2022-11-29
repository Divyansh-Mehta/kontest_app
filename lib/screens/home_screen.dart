import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            // color: Colors.grey,
            // ignore: unnecessary_const
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(200.0),
                bottomRight: Radius.circular(200.0)),
          ),
          height: 200,
          width: double.infinity,
          child: const Text("Hello"),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 400,
          child: ListView.builder(itemBuilder: null),
        )
      ],
    );
  }
}
