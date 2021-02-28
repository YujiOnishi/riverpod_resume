import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../provider/game.dart';

class GameApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('役職')),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                getMasterText(),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: createButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget createButton() {
    Widget button;

    button = MaterialButton(
      onPressed: () => {},
      child: Text('イエス'),
      color: Colors.blueAccent,
      textColor: Colors.white,
    );

    return button;
  }

  String getMasterText() {
    String text;

    text = "ゲームスタート！";

    return text;
  }
}