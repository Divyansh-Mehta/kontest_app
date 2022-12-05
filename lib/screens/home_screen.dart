// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kontest_app/widgets/platform.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var nameText = RichText(
      text: const TextSpan(
        // ignore: unnecessary_const
        style: const TextStyle(
          fontSize: 28,
          fontFamily: "Neuton",
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(text: "Hey "),
          // ignore: unnecessary_const
          const TextSpan(
            text: "Divyansh",
            style: TextStyle(
              color: Color.fromRGBO(150, 26, 193, 1),
            ),
          ),
        ],
      ),
    );
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(190, 176, 176, 0.33),
            // ignore: unnecessary_const
            borderRadius: const BorderRadius.all(
              Radius.elliptical(350, 100),
            ),
          ),
          height: 400,
          width: double.infinity,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: nameText,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Seize the code..!",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Freehand",
                    color: Color.fromRGBO(7, 39, 120, 0.76),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: const Text(
                      "Platforms",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "B612",
                        color: Color.fromRGBO(167, 20, 20, 0.58),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  FlatButton(
                    onPressed: null,
                    child: const Text(
                      "See All >",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "B612",
                        color: Color.fromRGBO(85, 82, 82, 1),
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Platform("Leetcode", "assets/images/leetcode.png"),
                    Platform("Codechef", "assets/images/codechef.png"),
                    Platform("Codeforces", "assets/images/codeforces.png"),
                    Platform("spoj", ""),
                  ],
                ),
              )
            ],
          ),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 200,
          child: const Text("ListView"), //ListView.builder(itemBuilder: null),
        )
      ],
    );
  }
}
