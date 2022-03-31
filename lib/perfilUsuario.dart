import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PerfilUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(children: [
        Container(
          height: 280,
          width: double.infinity,
          color: Colors.purple,
          child: Column(children: [
            Center(
              child: Column(children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(75))),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                ),
                Icon(
                  Icons.star,
                  size: 25,
                  color: Colors.yellowAccent,
                ),
                Text(
                  '5,0/5,0',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                ),
                Text(
                  'João da Silva',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )
              ]),
            ),
          ]),
        ),
        Container(
          height: 5,
          width: double.infinity,
          color: Colors.grey[400],
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.grey[500],
        )
      ])),
    );
  }
}
