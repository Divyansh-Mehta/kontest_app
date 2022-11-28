import "package:flutter/material.dart";
import "screens/tabs_screen.dart";
// import "screens/main_screen.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kontest",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          color: Colors.white10,
        ),
      ),
      home: TabsScreen(),
    );
  }
}
