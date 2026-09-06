import 'package:dansho_store/core/app/env.variables.dart';
import 'package:dansho_store/dansho_store.dart';
import 'package:dansho_store/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const DanshoStore());
}
