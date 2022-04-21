// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/formUserProfessional/formUsersProfessional.dart';
import 'package:flutter_application_1/formUsers.dart';

void main() => runApp(profileForm());

class profileForm extends StatelessWidget {
  const profileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Center(
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    shrinkWrap: true,
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.

                    // Generate 100 widgets that display their index in the List.

                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/cliente_icone.png'))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text('Nouveautés'),
                        ),
                      ),
                      Container(
                        child: Container(
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/cliente_icone.png'))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text('Nouveautés'),
                          ),
                        ),
                      )
                    ]),
              ))),
    );
  }
}
