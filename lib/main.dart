import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphic/neumorphic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

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
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 220, 220, 220)
            ],
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 35),
                    child: NeuButton(
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
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(),
            ),
            Expanded(
              flex: 3,
              child: Column(),
            ),
          ],
        ),
      ),
    );
  }
}
