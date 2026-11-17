import 'package:dansho_store/core/common/widgets/admin_app_bar.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/features/admin/add_products/presentation/refactors/add_product_body.dart';
import 'package:flutter/material.dart';

class AddProductsScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdminAppBar(
        backgroundColor: ColorsDark.mainColor,
        isMain: true,
        title: 'Products',
      ),
      body: AddProductBody(),
    );
  }
}
