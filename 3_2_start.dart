import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../provider/game.dart';
import '../pages/game.dart';


class StartApp extends HookWidget {
  final List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ワンナイト人狼')),
      body: Center(
        child: Column(
          children: [
            Column(
              children: createPlayerWidgets(),
            ),
            MaterialButton(
              onPressed: () => {start(context)},
              child: Text('スタート！'),
              color: Colors.blueAccent,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void start(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GameApp(),
      ),
    );
  }

  List<Widget> createPlayerWidgets() {
    List<Widget> players = [];
    for (int i = 0; i < 4; i++) {
      players.add(
        Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            controller: controllers[i],
            decoration: const InputDecoration(
              hintText: '参加者の名前',
            ),
          ),
        ),
      );
    }
    return players;
  }
}
