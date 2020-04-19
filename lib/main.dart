import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic/neumorphic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
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
          color: Colors.white,
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     Color.fromARGB(255, 255, 255, 255),
          //     Color.fromARGB(255, 220, 220, 220)
          //   ],
          // ),
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
              child: Container(
                color: Color.fromARGB(255, 246, 245, 250),
                child: Column(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: SizedBox.expand(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 60, 0, 5),
                                child: Row(
                                  children: [
                                    Text(
                                      'SHORTCUTS',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 184, 180, 204),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Color.fromARGB(255, 211, 208, 225),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: SizedBox.expand(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 0, 5),
                                child: Row(
                                  children: [
                                    Text(
                                      'DEVICES',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 184, 180, 204),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Color.fromARGB(255, 211, 208, 225),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: SizedBox.expand(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 0, 5),
                                child: Row(
                                  children: [
                                    Text(
                                      'ROOMS',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 184, 180, 204),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: Color.fromARGB(255, 211, 208, 225),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
