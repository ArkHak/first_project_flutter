import 'package:flutter/material.dart';

import '../colors.dart';
import '../dimensions.dart';
import '../images.dart';
import '../styles.dart';

class BackPressedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function() onBackPressed;

  const BackPressedAppBar({
    super.key,
    required this.title,
    required this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: primaryTextStyle,
      ),
      centerTitle: true,
      elevation: elevation0,
      backgroundColor: surfaceColor,
      leading: IconButton(
        icon: arrowBackImages,
        onPressed: onBackPressed,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
