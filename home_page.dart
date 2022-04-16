// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: const Text(
            'Page d\'accueil',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
          ),
            ),
        body:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height:400.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        width: 250.0,
                        child:
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/scanning_page');
                          },
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.camera_alt,
                              ),
                              SizedBox(width: 7.0),
                              Text('Scan your receipt here !')
                            ],

                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue[900],
                            shape: StadiumBorder(),

                          ),
                        )
                    ),
                  ],
                )
              ],
            )
        );
  }
}
