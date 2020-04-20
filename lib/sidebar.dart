import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphic/neumorphic.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 40.0, bottom: 20, left: 15, right: 15),
          child: NeuButton(
              onPressed: () {},
              decoration: NeumorphicDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                // border: Border.all(
                //     color: Color.fromARGB(255, 220, 220, 220),
                //     width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Icon(
                  FontAwesomeIcons.slack,
                  color: Color.fromARGB(255, 254, 145, 100),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Icon(
            Icons.dashboard,
            color: Color.fromARGB(255, 184, 180, 204),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Icon(
            Icons.settings,
            color: Color.fromARGB(255, 184, 180, 204),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Icon(
            FontAwesomeIcons.filter,
            color: Color.fromARGB(255, 184, 180, 204),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60, bottom: 20),
          child: Icon(
            Icons.location_on,
            color: Color.fromARGB(255, 111, 50, 255),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Icon(
            FontAwesomeIcons.male,
            color: Color.fromARGB(255, 184, 180, 204),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Icon(
            FontAwesomeIcons.solidFileAlt,
            color: Color.fromARGB(255, 184, 180, 204),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Card(
            color: Colors.transparent,
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/ak.jpg",
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
