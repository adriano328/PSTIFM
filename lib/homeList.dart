import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nome do app'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey.shade600),
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle_sharp,
                      size: 70,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.yellowAccent,
                    ),
                    Text(
                      'Usuário',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    new Baseline(
                      baseline: 40,
                      baselineType: TextBaseline.alphabetic,
                      child: new Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey.shade600),
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle_sharp,
                      size: 70,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.yellowAccent,
                    ),
                    Text(
                      'Usuário',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    new Baseline(
                      baseline: 40,
                      baselineType: TextBaseline.alphabetic,
                      child: new Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey.shade600),
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle_sharp,
                      size: 70,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.yellowAccent,
                    ),
                    Text(
                      'Usuário',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    new Baseline(
                      baseline: 40,
                      baselineType: TextBaseline.alphabetic,
                      child: new Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey.shade600),
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle_sharp,
                      size: 70,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.yellowAccent,
                    ),
                    Text(
                      'Usuário',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    new Baseline(
                      baseline: 40,
                      baselineType: TextBaseline.alphabetic,
                      child: new Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}