import 'package:dansho_store/core/common/widgets/admin_app_bar.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const AdminAppBar(
        backgroundColor: ColorsDark.mainColor,
        isMain: true,
        title: 'Users',
      ),
      body: const Center(child: Text('DashBoard')),
    );;
  }
}