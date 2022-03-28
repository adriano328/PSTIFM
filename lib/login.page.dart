import 'package:flutter/material.dart';
import 'package:flutter_application_1/formUsers.dart';
import 'package:flutter_application_1/formUsersProfessional.dart';
import 'package:flutter_application_1/listUsers.dart';
import 'package:flutter_application_1/main.dart';

//ads

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 0,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              child: Image.asset('assets/google_logo.png'),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Usuário",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  )),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: SizedBox(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Logar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => listUser()),
                    )
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(
                child: Text(
                  "Esqueceu a sua senha? Clique Aqui! ",
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              height: 30,
              alignment: Alignment.center,
              child: Text(
                "Novo no Aplicativo?",
                style: TextStyle(
                  color: Color(0xFF9C27B0),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    child: Text(
                      "Cliente",
                      style: TextStyle(color: Colors.purple),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => formUsers()),
                      )
                    },
                  ),
                  Text("||"),
                  TextButton(
                    child: Text(
                      "Profissional",
                      style: TextStyle(color: Colors.purple),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => formUsersProfessional()),
                      )
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
