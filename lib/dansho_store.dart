import 'package:dansho_store/core/app/env.variables.dart';
import 'package:flutter/material.dart';

class DanshoStore extends StatelessWidget {
  const DanshoStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariable.instance.isDev,
      title: 'Dansho Store',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Dansho Store'),
        ),
        body: const Center(child: Text('Hello World')),
      ),
    );
  }
}
