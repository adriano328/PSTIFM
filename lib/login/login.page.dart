import 'package:flutter/material.dart';
import 'package:flutter_application_1/formUsers.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 0,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset('assets/google_logo.png'),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.all(15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                labelText: 'E-mail:',
                labelStyle:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.all(15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                labelText: 'Senha:',
                labelStyle:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Logar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Esqueceu a sua senha? Clique Aqui',
                  style: TextStyle(color: Colors.purple),
                )),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => formUsers()));
                },
                child: const Text(
                  'Novo no aplicativo? Clique Aqui',
                  style: TextStyle(color: Colors.purple),
                ))
          ],
        ),
      ),
    );
  }
}
