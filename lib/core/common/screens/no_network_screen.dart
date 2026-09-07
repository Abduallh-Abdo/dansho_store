import 'package:dansho_store/core/styles/images/assets_manager.dart';
import 'package:flutter/material.dart';

class NoNetworkScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCoreNoNetwork),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
