import 'package:flutter/material.dart';

import '../models/word.dart';
import '../variables/dummy_data.dart';
import '../widgets/word_card.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('dictionary')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return WordCard(
            rusWord: words[index].rusWord,
            ironWords: words[index].ironWords,
          );
        },
        itemCount: words.length,
      ),
    );
  }
}
