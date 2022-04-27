import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/cardPrestador/cardPrestador.dart';

class ServicosPesquisa extends StatelessWidget {
  ServicosPesquisa({Key? key}) : super(key: key);

  CardPrestador item1 = CardPrestador('Augusto de Freitas', 'Autonomo',
      'assets/source/images/Augusto.jpg', '5.0');
  CardPrestador item2 = CardPrestador('Sergio Paulo Cardoso', 'Autonomo',
      'assets/source/images/Sergio.jpg', '5.0');
  CardPrestador item3 = CardPrestador(
      'Rafaela Pereira', 'Autonomo', 'assets/source/images/Rafaela.jpg', '5.0');
  CardPrestador item4 = CardPrestador(
      'Paula Bianccini', 'Autonomo', 'assets/source/images/Paula.jpg', '5.0');
  @override
  Widget build(BuildContext context) {
    List<CardPrestador> prestadorLista = [item1, item2, item3, item4];
    return Scaffold(
        appBar: AppBar(
          title: Text('Buscar Serviços'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount: prestadorLista.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  childAspectRatio: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius:  BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Image.asset(prestadorLista[index].imagem),
                      Text(prestadorLista[index].nome),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.amber[700],),
                          Text(prestadorLista[index].nota),
                        ],
                      ),
                      Text(prestadorLista[index].descricao),
                    ],
                  ),
                );
              }),
        ));
  }
}
