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
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            const SizedBox(
              height: 780,
            ),
            TextButton(
                onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => formUsers()))
                    },
                child:
                    Image.asset('assets/cliente_icone.png', fit: BoxFit.cover)),
            TextButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => formUsersProfessional()))
                    },
                child: Image.asset('assets/profissional_icone.png',
                    fit: BoxFit.cover))
          ]),
        ),
      ),
    );
  }
}
