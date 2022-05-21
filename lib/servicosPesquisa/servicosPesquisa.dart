import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/cardPrestador/cardPrestador.dart';

void main() => runApp(ServicosPesquisa());

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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  }),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount: prestadorLista.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  childAspectRatio: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Image.asset(prestadorLista[index].imagem),
                      Text(prestadorLista[index].nome),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber[700],
                          ),
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

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Pedreiro',
    'Encanador',
    'Montador',
    'Diarista',
    'Pintor',
    'Eletricista',
    'Babá'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var profissoes in searchTerms) {
      if (profissoes.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(profissoes);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var profissoes in searchTerms) {
      if (profissoes.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(profissoes);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
