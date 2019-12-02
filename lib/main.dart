import 'package:flutter/material.dart';
import './logo.dart';
import './login.dart';

void main() => runApp(ImHere());

class ImHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Im Here',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white12,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Logo(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: new Text("I AM HERE",
                    style: new TextStyle(fontSize: 30.0, color: Colors.white)),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: new Container(
                      width: 60.0,
                      height: 60.0,
                      alignment: Alignment.center,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(10.0),
                          color: Colors.greenAccent),
                      child: new Text(
                        "Get Started",
                        style:
                            new TextStyle(fontSize: 23.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
