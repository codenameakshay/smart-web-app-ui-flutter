import 'package:flutter/material.dart';
import './devicesmenu.dart';
import './shortcutmenu.dart';
import './roomsmenu.dart';

class RightSideBar extends StatelessWidget {
  const RightSideBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 246, 245, 250),
      child: Column(
        children: [
          Expanded(
            flex: 14,
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              child: SizedBox.expand(
                child: ShortcutMenu(),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              child: SizedBox.expand(
                child: DevicesMenu(),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              child: SizedBox.expand(
                child: RoomsMenu(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}