import "package:flutter/widgets.dart";

class UserData with ChangeNotifier {
  final String authToken;
  UserData(this.authToken);
}
