import 'package:flutter/material.dart';

void main() => runApp(formUsers());

class formUsers extends StatefulWidget {
  @override
  _formUsersState createState() => _formUsersState();
}

class _formUsersState extends State<formUsers> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      title: "FormValidation",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String nome = "";
  String email = "";
  String telefone = "";
  String celular = "";
  String endereco = "";
  String senha = "";
  String confirmar = "";

  void _submit() {
    // you can write your own code according to whatever you want to submit;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Column(children: [
                      const Icon(
                        Icons.account_circle_sharp,
                        size: 70,
                        color: Colors.black,
                      ),
                    ]),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Nome Completo:',
                      labelStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    keyboardType: TextInputType.text,
                    onFieldSubmitted: (value) {
                      setState(() {
                        nome = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'E-mail:',
                      labelStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    onFieldSubmitted: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            labelText: 'Telefone:',
                            labelStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          onFieldSubmitted: (value) {
                            setState(() {
                              telefone = value;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            labelText: 'Celular:',
                            labelStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          onFieldSubmitted: (value) {
                            setState(() {
                              celular = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Endereço:',
                      labelStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    onFieldSubmitted: (value) {
                      setState(() {
                        endereco = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            labelText: 'Senha:',
                            labelStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          onFieldSubmitted: (value) {
                            setState(() {
                              senha = value;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            labelText: 'Confirmar:',
                            labelStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          onFieldSubmitted: (value) {
                            setState(() {
                              confirmar = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Container(
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Salvar',
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      ),
    );
  }
}
