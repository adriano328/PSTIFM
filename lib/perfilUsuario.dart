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
                    child: Center(
                      child: Icon(
                        Icons.person,
                        size: 120,
                        color: Colors.grey[800],
                      ),
                    )),
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
          color: Colors.purple[900],
        ),
        Container(
          height: 170,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            children: [
              Container(
                child: Text(
                  'Agendamento',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.purple[700],
                      fontWeight: FontWeight.w600),
                ),
                padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                alignment: Alignment.topLeft,
              ),
              Container(
                  height: 130,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 130,
                          height: 130,
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Column(children: [
                            Container(
                              width: 130,
                              height: 30,
                              color: Colors.red[700],
                              child: Center(
                                child: Text(
                                  'Agendado',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          width: 130,
                          height: 130,
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Column(children: [
                            Container(
                              width: 130,
                              height: 30,
                              color: Colors.red[700],
                              child: Center(
                                child: Text(
                                  'Agendado',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          width: 130,
                          height: 130,
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Column(children: [
                            Container(
                              width: 130,
                              height: 30,
                              color: Colors.red[700],
                              child: Center(
                                child: Text(
                                  'Agendado',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          width: 130,
                          height: 130,
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Column(children: [
                            Container(
                              width: 130,
                              height: 30,
                              color: Colors.red[700],
                              child: Center(
                                child: Text(
                                  'Agendado',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          width: 130,
                          height: 130,
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Column(children: [
                            Container(
                              width: 130,
                              height: 30,
                              color: Colors.red[700],
                              child: Center(
                                child: Text(
                                  'Agendado',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          width: 130,
                          height: 130,
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Column(children: [
                            Container(
                              width: 130,
                              height: 30,
                              color: Colors.red[700],
                              child: Center(
                                child: Text(
                                  'Agendado',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          width: 130,
                          height: 130,
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Column(children: [
                            Container(
                              width: 130,
                              height: 30,
                              color: Colors.red[700],
                              child: Center(
                                child: Text(
                                  'Agendado',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ]))
            ],
          ),
        ),
        Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(children: [
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Atendimentos',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.purple[700],
                          fontWeight: FontWeight.w600),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                      height: 150,
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            Container(
                              width: 130,
                              height: 170,
                              color: Colors.white,
                              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Column(children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(60))),
                                      margin:
                                          EdgeInsets.fromLTRB(10, 15, 0, 20),
                                      child: Center(
                                        child: Icon(
                                          Icons.person,
                                          size: 70,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ]),
                            ),
                          ]))
                ],
              ),
            ),
          ]),
        ),
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: SizedBox(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "WhatsApp",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: SizedBox(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Ligar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            ],
          ),
        )
      ])),
    );
  }
}
