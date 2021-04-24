import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp_uikit/pages/home.dart';
import 'package:socialapp_uikit/pages/messages.dart';
import 'package:socialapp_uikit/pages/notifications.dart';
import 'package:socialapp_uikit/pages/profile.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          Home(),
          Messages(),
          Notifications(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Theme.of(context).textTheme.headline6.color,
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon:Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  top:0.0,
                  right:0.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 5.0,
                  ),
                ),
                Icon(Icons.mail_outline),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Positioned(
                  top: 2.5,
                  right:1,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 5.0,
                  ),
                ),
                Icon(CupertinoIcons.bell),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "",
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
