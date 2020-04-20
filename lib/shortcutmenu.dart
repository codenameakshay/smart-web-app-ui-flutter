import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_border/dotted_border.dart';

class ShortcutMenu extends StatelessWidget {
  const ShortcutMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 60, 0, 5),
          child: Row(
            children: [
              Text(
                'SHORTCUTS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 184, 180, 204),
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Color.fromARGB(255, 211, 208, 225),
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 20, 5),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color.fromARGB(255, 111, 50, 255),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    FontAwesomeIcons.temperatureLow,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Temperature',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 53, 63, 96),
                ),
              ),
              Text(
                '24 C',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 157, 153, 177),
                ),
              )
            ])
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 20, 5),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color.fromARGB(255, 255, 144, 102),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    FontAwesomeIcons.wifi,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Internet',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 53, 63, 96),
                ),
              ),
              Text(
                '74,22',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 157, 153, 177),
                ),
              )
            ])
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 20, 5),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color.fromARGB(255, 255, 205, 65),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    FontAwesomeIcons.lightbulb,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Lights',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 53, 63, 96),
                ),
              ),
              Text(
                '9',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 157, 153, 177),
                ),
              )
            ])
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 20, 5),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(20),
                color: Color.fromARGB(255, 184, 180, 204),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.transparent,
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      FontAwesomeIcons.plus,
                      color: Color.fromARGB(255, 184, 180, 204),
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Add',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 157, 153, 177),
                ),
              )
            ])
          ],
        ),
      ],
    );
  }
}