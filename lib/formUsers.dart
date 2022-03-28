import 'package:flutter/material.dart';

void main() => runApp(formUsers());

class formUsers extends StatefulWidget {
  @override
  _formUsersState createState() => _formUsersState();
}

//ads

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
        title: Text("Cadastro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      Icon(
                        Icons.account_circle_sharp,
                        size: 70,
                        color: Colors.black,
                      ),
                    ]),
                  ),

                  //TextBox - Nome Completo
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Nome Completo:',
                      labelStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    keyboardType: TextInputType.text,
                    onFieldSubmitted: (value) {
                      setState(() {
                        nome = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //TextBox - Nome E-mail
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'E-mail:',
                      labelStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    onFieldSubmitted: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //TextBox - Nome Telefone
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Telefone:',
                      labelStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    onFieldSubmitted: (value) {
                      setState(() {
                        telefone = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //TextBox - Nome Celular
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Celular:',
                      labelStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    onFieldSubmitted: (value) {
                      setState(() {
                        celular = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //TextBox - Nome Endereço
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Endereço:',
                      labelStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    onFieldSubmitted: (value) {
                      setState(() {
                        endereco = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //TextBox - Nome Senha
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Senha:',
                      labelStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (value) {
                      setState(() {
                        senha = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //TextBox - Nome Confirmar
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Confirmar:',
                      labelStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (value) {
                      setState(() {
                        confirmar = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: TextButton(
                      child: Center(
                        child: Text(
                          "Cadastrar",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
