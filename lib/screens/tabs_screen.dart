import "package:flutter/material.dart";
import "./home_screen.dart";

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      {"page": HomeScreen(), "title": "Categories"},
      // {"page": , "title": "Your Favorite"},
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
      appBar: AppBar(
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
          Transform.scale(
            scale: 1.5,
            child: IconButton(
              onPressed: () => {},
              icon: Image.asset("assets/icons/settings.png"),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        elevation: 0,
        backgroundColor: Colors.white10,
        unselectedItemColor: null,
        selectedItemColor: null,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: IconTheme(
              child: ImageIcon(
                AssetImage("assets/icons/home.png"),
              ),
              data: IconThemeData(
                color: null,
              ),
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/home.png"),
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/home.png")),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/home.png")),
            title: Text("Home"),
          ),
          // BottomNavigationBarItem(
          //   icon: Transform.scale(
          //     scale: 0.5,
          //     child: Image.asset("assets/icons/work.png"),
          //   ),
          //   title: Text("Work"),
          // ),
          // BottomNavigationBarItem(
          //   icon: Transform.scale(
          //     scale: 0.5,
          //     child: Image.asset("assets/icons/group.png"),
          //   ),
          //   title: Text("Group"),
          // ),
          // BottomNavigationBarItem(
          //   icon: Transform.scale(
          //     scale: 0.5,
          //     child: Image.asset("assets/icons/profile.png"),
          //   ),
          //   title: Text("Profile"),
          // ),
        ],
      ),
      body: _pages[_selectedPageIndex]["page"],
    );
  }
}
