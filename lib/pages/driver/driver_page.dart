import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../../design/dimensions.dart';
import '../../design/styles.dart';
import '../../design/images.dart';
import 'driver_list.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Driver',
          style: primaryTextStyle,
        ),
        centerTitle: true,
        elevation: elevation0,
        backgroundColor: surfaceColor,
        leading: IconButton(
          icon: arrowBackImages,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: backgroundColor,
        child: const DriverList(),
      ),
    );
  }
}
