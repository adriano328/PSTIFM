// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/formUserProfessional/formUsersProfessional.dart';
import 'package:flutter_application_1/formUsers.dart';

void main() => runApp(profileForm());
var listTitle = ['Cliente', 'Profissional'];
var listImgs = [
  'assets/cliente_icone.png',
  'assets/profissional_icone.png',
  'assets/profissional_icone.png'
];

var listRouter = [formUsers(), formUsersProfessional(), formUsers()];

class profileForm extends StatelessWidget {
  const profileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          margin: const EdgeInsets.only(top: 280),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 170, // here set custom Height You Want
            ),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => listRouter[index]))
                },
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(listImgs[index]))),
                  child: Align(
                      child: Text(listTitle[index]),
                      alignment: Alignment(0, 1.3)),
                ),
              );
            },
          )),
    ));
  }
}
