import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter大学",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class TweetTile extends StatelessWidget{
  const TweetTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            child : Image.asset("images/icon.png"),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("甘夏燈子"),
                  SizedBox(width: 8),
                  Text("@amanatsu_toko 2023/08/13", style: TextStyle(color: Colors.grey),)
                ],
              ),
              SizedBox(height: 4),
              Text("TwitterのUIの模倣"),
              Row(
                children: [
                  IconButton(onPressed:(){}, icon: Icon(Icons.chat_bubble_outline)),
                  IconButton(onPressed:(){}, icon: Icon(Icons.cached_outlined)),
                  IconButton(onPressed:(){}, icon: Icon(Icons.favorite_border)),
                  IconButton(onPressed:(){}, icon: Icon(Icons.ios_share_outlined)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}