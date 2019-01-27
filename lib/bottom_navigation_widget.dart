import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/FavoritePage.dart';
import 'pages/MinePage.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  final List<Widget> _pages = List();
  var _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages..add(HomePage())..add(FavoritePage())..add(MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Favorite',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Mine',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
        ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int index) {
//            Scaffold.of(context).showSnackBar(
//                SnackBar(content: Text('点击了$index')));
            setState(() {
              _currentIndex = index;
            });
          },
        ),

    );
  }
}
