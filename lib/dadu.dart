import 'dart:math';

import 'package:flutter/material.dart';

class DaduPage extends StatefulWidget {
  const DaduPage({super.key});

  @override
  State<DaduPage> createState() => _DaduPageState();
}

class _DaduPageState extends State<DaduPage> {
  //variabel
  int daduPertama = 1;
  int dadukedua = 3;

  //function diceNumber
  void changeDiceNumber() {
    setState(() {
      daduPertama = Random().nextInt(6) + 1;
      dadukedua = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$daduPertama.png'),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$dadukedua.png'),
            ),
          ),
        ],
      ),
    );
  }
}
