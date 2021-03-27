import 'package:flutter/material.dart';

void main() {
  runApp(FriendsApp());
}

class FriendsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus amigos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meus amigos'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyFriend('Maria'),
            MyFriend('Gabriel'),
            MyFriend('Anderson'),
            ItemCounter('teste'),
          ],
        )),
      ),
    );
  }
}

class MyFriend extends StatelessWidget {
  final String text;
  const MyFriend(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Text(text, style: TextStyle(fontSize: 50)),
      ),
    );
  }
}

class ItemCounter extends StatefulWidget {
  final String name;
  ItemCounter(this.name);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    //return Text('${Widget.name}: $count', style: TextStyle(fontSize: 50));
    return GestureDetector(
        onTap: () {
          count++;
        },
        child: Text('$count', style: TextStyle(fontSize: 50)));
  }
}
