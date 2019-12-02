import 'package:face_recognition/main.dart';
import 'package:flutter/material.dart';
import 'logo.dart';
import './home.dart';



class LoginPage extends StatelessWidget {
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
        body: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              new Logo(),
              Padding(
                padding:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                child: new TextField(
                  style: new TextStyle(color: Colors.green),
                  decoration: new InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.greenAccent),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent))),
                ),
              ),
              new SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: new TextField(
                  obscureText: true,
                  style: new TextStyle(color: Colors.green),
                  decoration: new InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.greenAccent),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent))),
                ),
              ),
              new Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage()
                        ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                        child: new Container(
                            width: 60.0,
                            height: 60.0,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(10.0),
                                color: Colors.greenAccent),
                            child: new Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0,right: 10.0),
                        child: new Container(
                            width: 60.0,
                            height: 60.0,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            child: new Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.greenAccent),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              new Column()

            ],
          ),
        ));
  }
}
