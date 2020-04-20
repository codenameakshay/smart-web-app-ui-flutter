import 'package:flutter/material.dart';

class SideBarDivider extends StatelessWidget {
  const SideBarDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(9.0, 50, 9, 0),
          child: Container(
            color: Color.fromARGB(255, 246, 245, 250),
            height: 310,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(9.0, 0, 9, 0),
          child: Container(
            color: Color.fromARGB(255, 111, 50, 255),
            height: 60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(9.0, 0, 9, 0),
          child: Container(
            color: Color.fromARGB(255, 246, 245, 250),
            height: 290,
          ),
        ),
      ],
    );
  }
}