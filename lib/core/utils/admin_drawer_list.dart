import 'package:dansho_store/core/common/dialogs/custom_dialogs.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/routes/app_routes.dart';
import 'package:dansho_store/core/service/shared_prefs/prefs_keys.dart';
import 'package:dansho_store/core/service/shared_prefs/shared_pref.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/screens/add_categories_screen.dart';
import 'package:dansho_store/features/admin/add_notifications/presentation/screens/add_notifications_screen.dart';
import 'package:dansho_store/features/admin/add_products/presentation/screens/add_products_screen.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:dansho_store/features/admin/users/presentation/screens/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<DrawerItemModel> adminDrawerList(BuildContext context) {
  return <DrawerItemModel>[
    //DashBoard
    DrawerItemModel(
      icon: const Icon(Icons.dashboard, color: Colors.white),
      title: TextApp(
        text: 'Dashboard',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const DashboardScreen(),
    ),
    //Categories
    DrawerItemModel(
      icon: const Icon(Icons.category_outlined, color: Colors.white),
      title: TextApp(
        text: 'Categories',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddCategoriesScreen(),
    ),
    //Product
    DrawerItemModel(
      icon: const Icon(Icons.production_quantity_limits, color: Colors.white),
      title: TextApp(
        text: 'Products',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddProductsScreen(),
    ),
    //Users
    DrawerItemModel(
      icon: const Icon(Icons.people_alt_rounded, color: Colors.white),
      title: TextApp(
        text: 'Users',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const UsersScreen(),
    ),
    //Notifications
    DrawerItemModel(
      icon: const Icon(Icons.notifications_active, color: Colors.white),
      title: TextApp(
        text: 'Notifications',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddNotificationsScreen(),
    ),
    //LogOut
    DrawerItemModel(
      icon: const Icon(Icons.exit_to_app, color: Colors.white),
      title: GestureDetector(
        onTap: () {
          CustomDialog.twoButtonDialog(
            context: context,
            textBody: 'Do you want log out?',
            textButton1: 'Yes',
            textButton2: 'No',
            isLoading: false,
            onPressed: () async {
              final navigator = Navigator.of(context);
              await SharedPref().removePreference(PrefKeys.accessToken);
              await SharedPref().removePreference(PrefKeys.userId);
              await SharedPref().removePreference(PrefKeys.userRole);
              await navigator.pushNamedAndRemoveUntil(
                Routes.login,
                (route) => false,
              );
            },
          );
        },
        child: const Text(
          'Logout',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeightHelper.bold,
            fontSize: 17,
          ),
        ),
      ),
      page: const UsersScreen(),
    ),
  ];
}

class DrawerItemModel {
  DrawerItemModel({
    required this.icon,
    required this.title,
    required this.page,
  });

  final Icon icon;
  final Widget title;
  final Widget page;
}
