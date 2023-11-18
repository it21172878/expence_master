import 'package:expence_master/models/expence.dart';
import 'package:flutter/material.dart';

class Expences extends StatefulWidget {
  const Expences({super.key});

  @override
  State<Expences> createState() => _ExpencesState();
}

class _ExpencesState extends State<Expences> {
// expenceList
  final List<ExpenceModel> _expenceList = [
    ExpenceModel(
        title: "Foot Ball",
        amount: 12.5,
        date: DateTime.now(),
        category: Category.leasure),
    ExpenceModel(
        title: "Avacardo",
        amount: 10.25,
        date: DateTime.now(),
        category: Category.food),
    ExpenceModel(
        title: "London",
        amount: 1002.50,
        date: DateTime.now(),
        category: Category.travel)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expence Master'),
        backgroundColor: const Color.fromARGB(255, 202, 124, 245),
        elevation: 0,
        actions: [
          Container(
            color: const Color.fromARGB(255, 236, 215, 248),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _expenceList.length,
              itemBuilder: (context, index) {
                return Text(_expenceList[index].title);
              },
            ),
          ),
        ],
      ),
    );
  }
}
