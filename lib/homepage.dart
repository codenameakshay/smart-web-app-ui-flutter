import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './rightsidebar.dart';
import './sidebardivider.dart';
import './sidebar.dart';
import 'package:flutter/cupertino.dart';
import './topbar.dart';
import 'package:fl_chart/fl_chart.dart';
import './chart.dart';

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
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: TopBar(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [LineChartSample1()],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(),
                  )
                ],
              ),
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
