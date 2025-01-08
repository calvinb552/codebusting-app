import 'package:flutter/material.dart';
import 'dart:math';

class listTest extends StatefulWidget {
  @override
  State<listTest> createState() => _listTestState();
}

class _listTestState extends State<listTest> {

  List<String> letters = [
    "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
  ];
  List<String> chiphertext = [];

  void randomizeLetters() {
  List<String> lettersCopy = List.from(letters); //copying old list so it wont be changed
  chiphertext.clear(); // clear list in case of leftover from last code
  Random random = Random();
  
  while (lettersCopy.isNotEmpty) {
    // Get a random index from the letters list
    if (lettersCopy.isNotEmpty) {
      int randomIndex = random.nextInt(lettersCopy.length);
      chiphertext.add(lettersCopy.removeAt(randomIndex));
  }
  }
  //update UI
  setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('codebusting app'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: randomizeLetters,
            child: const Text('randomize letters')
          ),
          const SizedBox(height: 20),
          Text(chiphertext.join(', '))
        ]
      ),
    );
  }
}