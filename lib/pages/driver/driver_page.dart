import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../../design/widgets/back_pressed_app_bar.dart';
import 'driver_list.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackPressedAppBar(
          title: 'Select Driver',
          onBackPressed: () {
            Navigator.pop(context);
          }),
      body: Container(
        color: backgroundColor,
        child: const DriverList(),
      ),
    );
  }
}
