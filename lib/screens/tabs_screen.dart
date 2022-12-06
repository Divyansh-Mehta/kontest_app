import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "./profile_screen.dart";
import "./coding_equipments_screen.dart";
import "./home_screen.dart";
import "./group_screen.dart";
import "../providers/auth_provider.dart";

// ignore: use_key_in_widget_constructors
class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Object> _pages;

  int _selectedPageIndex;

  @override
  void initState() {
    super.initState();
    _selectedPageIndex = 0;
    _pages = [
      HomeScreen(),
      CodingEquipmentsScreen(),
      GroupScreen(),
      ProfileScreen(),
    ];
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (_selectedPageIndex == 0 ||
              _selectedPageIndex == 1 ||
              _selectedPageIndex == 2)
          ? AppBar(
              title: const Text(
                "Kontest",
                style: TextStyle(
                  fontFamily: "PasseroOne",
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              elevation: 0,
              leading: const ImageIcon(
                AssetImage("assets/icons/trophy.png"),
                color: Color.fromRGBO(242, 157, 56, 50),
              ),
              actions: <Widget>[
                PopupMenuButton(
                  icon: Transform.scale(
                    scale: 1.5,
                    child: Image.asset("assets/icons/settings.png"),
                  ),
                  itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text("Log Out"),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed("/");

                        // Navigator.of(context)
                        //     .pushReplacementNamed(UserProductsScreen.routeName);
                        Provider.of<Auth>(context, listen: false).logout();
                      },
                    ),
                    PopupMenuItem(
                      child: Text("Edit profile"),
                      onTap: null,
                    ),
                  ],
                ),
              ],
            )
          : AppBar(
              backgroundColor: const Color.fromRGBO(160, 153, 238, 1),
              title: const Text(
                "Kontest",
                style: TextStyle(
                  fontFamily: "PasseroOne",
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              elevation: 0,
              leading: const ImageIcon(
                AssetImage("assets/icons/trophy.png"),
                color: Color.fromRGBO(242, 157, 56, 50),
              ),
            ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white10,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: _selectedPageIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 1,
              child: Image.asset("assets/icons/home.png"),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 1,
              child: Image.asset("assets/icons/work.png"),
            ),
            label: "Work",
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 1,
              child: Image.asset("assets/icons/group.png"),
            ),
            label: "Group",
          ),
          BottomNavigationBarItem(
            icon: Transform.scale(
              scale: 1,
              child: Image.asset("assets/icons/profile.png"),
            ),
            label: "Profile",
          ),
        ],
      ),
      body: _pages[_selectedPageIndex],
    );
  }
}
