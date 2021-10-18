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
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors. white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            "Youtube",
          ),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: (){

                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){

                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        "https://yt3.ggpht.com/ytc/AKedOLRK1Th-HbP9qrRWRHW2ntYBTy3KUL7ok_CbupA-ig=s176-c-k-c0x00ffffff-no-rj",
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      width:8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'ティラミスチャンネル',
                        ),
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text("登録する"),
                            ],
                          ),
                          onPressed: (){
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: ()async{
                        //画面遷移
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage(),
                          ),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                        "https://yt3.ggpht.com/ytc/AKedOLRK1Th-HbP9qrRWRHW2ntYBTy3KUL7ok_CbupA-ig=s176-c-k-c0x00ffffff-no-rj",
                        width: 100,
                      ),
                      title: Column(
                        children: <Widget>[
                          Text("[スプラトゥーン2]ケルビンしか勝たん",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "100万回再生",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "５日前",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





