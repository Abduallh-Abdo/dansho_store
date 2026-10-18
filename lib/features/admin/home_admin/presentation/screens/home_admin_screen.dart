import 'package:dansho_store/core/common/widgets/admin_app_bar.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/core/styles/images/assets_manager.dart';
import 'package:dansho_store/core/utils/admin_drawer_list.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeAdminScreen extends StatefulWidget {
  const HomeAdminScreen({super.key});

  @override
  State<HomeAdminScreen> createState() => _HomeAdminScreenState();
}

class _HomeAdminScreenState extends State<HomeAdminScreen> {
  Widget page = const DashboardScreen();
  final ZoomDrawerController _zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      mainScreen: page,
      borderRadius: 24,
      showShadow: true,
      controller: _zoomDrawerController,
      drawerShadowsBackgroundColor: ColorsDark.mainColor.withOpacity(.6),
      menuBackgroundColor: ColorsDark.blueDark,
      menuScreen: MenuAdminScreen(
        onPageChange: (p) async {
          setState(() {
            page = p;
          });
          await _zoomDrawerController.close?.call();
        },
      ),
    );
  }
}

class MenuAdminScreen extends StatelessWidget {
  const MenuAdminScreen({required this.onPageChange, super.key});
  final void Function(Widget) onPageChange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDark.blueDark,
      appBar: const AdminAppBar(
        isMain: false,
        backgroundColor: ColorsDark.blueDark,
        title: 'Dansho Store',
      ),
      body: Column(
        children: [
          Column(
            children: adminDrawerList(context)
                .map(
                  (e) => ListTile(
                    leading: e.icon,
                    title: e.title,
                    onTap: () {
                      onPageChange(e.page);
                    },
                  ),
                )
                .toList(),
          ),
          Expanded(child: Image.asset(Assets.imagesAdminDrawerImage)),
        ],
      ),
    );
  }
}
