import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

class TopBar extends StatefulWidget {
  TopBar({
    Key key,
  }) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back_ios,
          color: Color.fromARGB(255, 184, 180, 204),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 8, 2),
                  child: Text(
                    'Global',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 157, 153, 177),
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromARGB(255, 211, 208, 225),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 2, 8, 4),
              child: Text(
                'Temperature',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromARGB(255, 53, 63, 96),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 500,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(260, 8, 8, 8),
                  child: Icon(
                    Icons.more_horiz,
                    color: Color.fromARGB(255, 211, 208, 225),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 10, 0),
                  child: Icon(
                    FontAwesomeIcons.water,
                    color: Color.fromARGB(255, 211, 208, 225),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: Text(
                    '53%',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 53, 63, 96),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                  child: Icon(
                    FontAwesomeIcons.fan,
                    color: Color.fromARGB(255, 211, 208, 225),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: CupertinoSwitch(
                      value: isOn,
                      onChanged: (value) {
                        setState(() {
                          isOn = value;
                        });
                      }),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}

