import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar/home.dart';
import 'package:flutter_bottomnavigationbar/upload.dart';

// Bottom navigation , Statefulwidget and click PathOperation
// debug

void main() {
  runApp(MaterialApp(
    home: TestBottomNav(),
  ));
}

class TestBottomNav extends StatefulWidget {
  @override
  _TestBottomNavState createState() => _TestBottomNavState();
}

class _TestBottomNavState extends State<TestBottomNav> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switchScreen(1),
      appBar: AppBar(
        title: Text("BottomNavigation Bar Demo"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_upload), title: Text("Upload")),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), title: Text("Contacts")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }

 Widget switchScreen(int currentIndex) {
    switch(_currentIndex){
      case 0: return new Home();break;
      case 1:return new Upload();break;

    }
  }
}
