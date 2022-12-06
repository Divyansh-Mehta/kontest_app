import "package:flutter/material.dart";
import 'package:kontest_app/screens/edit_profile_screen.dart';
import "package:provider/provider.dart";

import "screens/splash_screen.dart";
import "screens/auth_screen.dart";
import "screens/profile_screen.dart";
import "screens/tabs_screen.dart";
import "providers/auth_provider.dart";
import "providers/user_data_provider.dart";
// import "screens/main_screen.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: Auth(),
          ),
          // ignore: missing_required_param
          ChangeNotifierProxyProvider<Auth, UserData>(
            update: (_, auth, prevUserData) => UserData(auth.token),
          ),
        ],
        child: Consumer<Auth>(
          builder: (ctx, auth, _) => MaterialApp(
            title: "Kontest",
            theme: ThemeData(
              primarySwatch: Colors.purple,
              appBarTheme: const AppBarTheme(
                foregroundColor: Colors.black,
                color: Colors.white10,
              ),
            ),
            home: auth.isAuth
                ? TabsScreen()
                : FutureBuilder(
                    future: auth.tryAutoLogin(),
                    builder: (ctx, authResultSnapShot) =>
                        authResultSnapShot.connectionState ==
                                ConnectionState.waiting
                            ? SplashScreen()
                            : AuthScreen()),
            routes: {EditProfileScreen.routeName: (_) => EditProfileScreen()},
          ),
        ));
  }
}
