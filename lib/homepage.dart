import 'package:flutter/material.dart';
import './rightsidebar.dart';
import './sidebardivider.dart';
import './sidebar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: SideBar(),
            ),
            Expanded(
              flex: 1,
              child: SideBarDivider(),
            ),
            Expanded(
              flex: 56,
              child: Column(),
            ),
            Expanded(
              flex: 1,
              child: Column(),
            ),
            Expanded(
              flex: 16,
              child: RightSideBar(),
            ),
          ],
        ),
      ),
    );
  }
}
