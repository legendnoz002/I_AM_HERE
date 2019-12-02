import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
            width: 200.0,
            height: 200.0,
            decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(70.0),
                color: Colors.blueGrey),
            child: new Icon(
              Icons.person_pin,
              color: Colors.white,
              size: 200.0,
            ),
          );
  }
}