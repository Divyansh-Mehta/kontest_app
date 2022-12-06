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
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(400),
              bottomRight: Radius.circular(400),
            ),
          ),
          height: 200,
          width: double.infinity,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Divyansh Mehta",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: "Actor",
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                child: Image.asset(
                  "assets/icons/cat_profile.png",
                  fit: BoxFit.fill,
                ),
                width: 100,
                height: 100,
              )
            ],
          ),
        ),
        /*Container(
          child: CustomScrollView(
            primary: false,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      color: Color.fromRGBO(151, 134, 215, 1),
                      child: Text(
                        "CODECHEF",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      color: Color.fromRGBO(151, 134, 215, 1),
                      child: Text(
                        "LEETCODE",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      color: Color.fromRGBO(151, 134, 215, 1),
                      child: Text(
                        "CODEFORCES",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      color: Color.fromRGBO(151, 134, 215, 1),
                      child: Text(
                        "SPOJ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )*/
      ],
    );
  }
}
