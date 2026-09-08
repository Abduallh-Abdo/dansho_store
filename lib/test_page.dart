import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).appName)),
      body: Text(
        S.of(context).login,
        style: TextStyle(fontSize: 30, color: Colors.red),
      ),
    );
  }
}
