import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(160, 153, 238, 1),
            borderRadius: BorderRadius.all(
              Radius.elliptical(350, 100),
            ),
          ),
          height: 400,
          width: double.infinity,
        )
      ],
    );
  }
}