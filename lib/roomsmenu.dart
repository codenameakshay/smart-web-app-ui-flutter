import 'package:flutter/material.dart';


class RoomsMenu extends StatelessWidget {
  const RoomsMenu({
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
                'ROOMS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 184, 180, 204),
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
    );
  }
}