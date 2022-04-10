import 'package:flutter/material.dart';

class ServicosPesquisa extends StatelessWidget {
  const ServicosPesquisa({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Buscar Serviços'),
        ),
        body: Container(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (BuildContext ctx, index) {
                  return Container();
                })));
  }
}
