// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/formUserProfessional/data.dart';
import 'package:flutter_application_1/formUserProfessional/notifiers.dart';
import 'package:flutter_application_1/shared/interface/buscaCep.dart';
import 'package:flutter_application_1/shared/services/buscaCepService.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<SingleNotifier>(
        create: (_) => SingleNotifier(),
      ),
      ChangeNotifierProvider<MultipleNotifier>(
        create: (_) => MultipleNotifier([]),
      )
    ],
    child: formUsersProfessional(),
  ));
}

class formUsersProfessional extends StatefulWidget {
  @override
  _formUsersProfessionalState createState() => _formUsersProfessionalState();
}

class _formUsersProfessionalState extends State<formUsersProfessional> {
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
  double _volume = 0.0;

  BuscaCep? buscaCep;

  TextEditingController? _enderecoController;

  _getDadosCep(String cep) {
    API.getDadosCep(cep).then((response) {
      buscaCep = BuscaCep.fromJson(json.decode(response.body));

      setState(() {
        _enderecoController = TextEditingController(
            text:
                "Rua ${buscaCep!.logradouro}, Bairro ${buscaCep!.bairro}, Cidade ${buscaCep!.localidade}, N°: ");
      });
    });
  }

  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  void _submit() {
    // you can write your own code according to whatever you want to submit;
  }

  _showMultipleChoiceDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        final _multipleNotifier = Provider.of<MultipleNotifier>(context);
        return AlertDialog(
          title: Text('Serviços oferecidos'),
          content: SingleChildScrollView(
            child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: countries
                      .map((e) => CheckboxListTile(
                            title: Text(e),
                            onChanged: (value) {
                              value!
                                  ? _multipleNotifier.addItem(e)
                                  : _multipleNotifier.removeItem(e);
                            },
                            value: _multipleNotifier.isHaveItem(e),
                          ))
                      .toList(),
                )),
          ),
          actions: [
            FlatButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro Profissional"),
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
                    obscureText: false,
                    onFieldSubmitted: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),

                  GridView.count(
                      shrinkWrap: true,
                      // Create a grid with 2 columns. If you change the scrollDirection to
                      // horizontal, this produces 2 rows.
                      crossAxisCount: 2,
                      childAspectRatio: (1 / .2),
                      // Generate 100 widgets that display their index in the List.
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              labelText: 'Telefone:',
                              labelStyle: TextStyle(
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
                        Container(
                          margin: const EdgeInsets.only(left: 5, top: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              labelText: 'Celular:',
                              labelStyle: TextStyle(
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
                      ]),

                  GridView.count(
                      shrinkWrap: true,
                      // Create a grid with 2 columns. If you change the scrollDirection to
                      // horizontal, this produces 2 rows.
                      crossAxisCount: 2,
                      childAspectRatio: (1 / .2),
                      // Generate 100 widgets that display their index in the List.
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: TextFormField(
                            onChanged: (String text) {
                              endereco = text;
                            },
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              labelText: 'Cep:',
                              labelStyle: TextStyle(
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
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5, top: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              _getDadosCep(endereco);
                            },
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                      ]),

                  SizedBox(
                    height: 8,
                  ),
                  //TextBox - Nome Endereço
                  TextFormField(
                    controller: _enderecoController,
                    style: TextStyle(fontSize: 12),
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
                    obscureText: false,
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
                    height: 10,
                  ),
                  Container(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple),
                      ),
                      onPressed: () {
                        _showMultipleChoiceDialog(context);
                      },
                      child: Text(
                        'Selecionar Serviços',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
                  SizedBox(
                    height: 10,
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
