import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white12,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.green),
      ),
      floatingActionButton: new FloatingActionButton.extended(
        icon: Icon(Icons.camera_alt),
        label: Text("Scane"),
        onPressed: (){},
      ),
    );
  }
}
