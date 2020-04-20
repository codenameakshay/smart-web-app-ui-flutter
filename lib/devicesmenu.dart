import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_border/dotted_border.dart';

class DevicesMenu extends StatelessWidget {
  const DevicesMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 0, 5),
          child: Row(
            children: [
              Text(
                'DEVICES',
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Wrap(
            children: [
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    FontAwesomeIcons.solidLightbulb,
                    color: Color.fromARGB(255, 111, 50, 255),
                    size: 20,
                  ),
                ),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    FontAwesomeIcons.box,
                    color: Color.fromARGB(255, 184, 180, 204),
                    size: 20,
                  ),
                ),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    FontAwesomeIcons.laptopCode,
                    color: Color.fromARGB(255, 184, 180, 204),
                    size: 20,
                  ),
                ),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    FontAwesomeIcons.camera,
                    color: Color.fromARGB(255, 184, 180, 204),
                    size: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
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
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}