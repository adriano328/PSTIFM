import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/prestador/perfilServidor.dart';
import 'package:flutter_application_1/home/usuario/perfilUsuario.dart';
import 'package:flutter_application_1/servicosPesquisa/ServicosPesquisa.dart';

void main() {
  runApp(const NavigationAppComponent());
}

class NavigationAppComponent extends StatelessWidget {
  const NavigationAppComponent({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _paginaAtual = 0;

List<Widget> _paginas = [
  PerfilUser(),
  PerfilServidor(),
  ServicosPesquisa(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_paginaAtual] ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        onTap: (index) {
          setState(() {
            _paginaAtual = index;
          });
        },
        currentIndex: _paginaAtual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_sharp), label: "Perfil"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profissional"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Serviços"),
        ],
      ),
    );
  }
}
