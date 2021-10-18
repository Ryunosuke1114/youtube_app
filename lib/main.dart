import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "DogsGram",
          ),

        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text("ワンちゃんしか勝たん"),
            ],


        ),
      ),
     ),
    );
  }
}







