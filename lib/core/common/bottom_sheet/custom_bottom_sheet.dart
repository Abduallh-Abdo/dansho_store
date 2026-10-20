import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet {
  const new _();

  static Future<void> showModelBottomSheetContainer({
    required BuildContext context,
    required Widget widget,
    VoidCallback? whenComplete,
    Color? backgroundColor,
  }) async {
    await showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor: backgroundColor ?? ColorsDark.blueDark,
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(padding: const EdgeInsets.all(16), child: widget),
          ),
        );
      },
    ).whenComplete(whenComplete ?? () {});
  }
}
