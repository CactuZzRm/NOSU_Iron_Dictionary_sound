import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class WordCard extends StatelessWidget {
  final String rusWord;
  final List<String> ironWords;
  static AudioPlayer player = new AudioPlayer();

  WordCard({required this.rusWord, required this.ironWords});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      decoration: BoxDecoration(color: Colors.amber[100]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(rusWord, style: const TextStyle(fontSize: 22),),
              Text(ironWords.toString().substring(1, ironWords.toString().length - 1), style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 20, 20, 20))),
            ],
          ),
          IconButton(
            onPressed: () {
              print('воспроизвожу');
              //player.play(DeviceFileSource('assets/sounds/$rusWord.wav'));
              //player.setSource(AssetSource());
              player.play(AssetSource('/sounds/$rusWord.wav'));
            },
            icon: const Icon(Icons.volume_down),
          ),
        ],
      ),
    );
  }
}
