import "package:flutter/material.dart";

class EditProfileScreen extends StatefulWidget {
  static const routeName = "/editProfile";
  @override
  State<EditProfileScreen> createState() => _EditProfileStateScreen();
}

class _EditProfileStateScreen extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Edit Profile Here"),
    );
  }
}
