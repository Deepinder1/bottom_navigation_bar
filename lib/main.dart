import 'package:bottom_navigation_bar/tabs/first.dart';
import 'package:bottom_navigation_bar/tabs/second.dart';
import 'package:bottom_navigation_bar/tabs/third.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //title
    title: "Using Tabs",
    //home
    home: MyHome(),
  ));
}

//credit to nishant
class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  //create atab controler
  TabController controller;

  @override
  void initState() {
    super.initState();

    //Intialize the Tab controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    //Dispose of the Tab controler
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Making AppBar
      appBar: AppBar(
        //Title
        title: Text("Using Bottom Navigation Bar"),
        //Setting dark bllue color
        backgroundColor: Colors.blue[900],
      ),
      //Setting TabBar view as the property of the Scaffold
      body: TabBarView(
        children: <Widget>[FirstTab(), SecondTab(), ThirdTab()],
        //Setting the controller
        controller: controller,
      ),
      bottomNavigationBar: Material(
        //setting the color of the bottom navigation bar
        color: Colors.blue,
        //setting the tabbar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              //setting the icon to the tab
              icon: Icon(Icons.favorite),
            ),
            Tab(
              //setting the icon to the tab
              icon: Icon(Icons.adb),
            ),
            Tab(
              //setting the icon to the tab
              icon: Icon(Icons.airport_shuttle),
            ),
          ],
          //Setting up the controller
          controller: controller,
        ),
      ),
    );
  }
}
