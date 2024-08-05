import 'package:first_project/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../../design/dimensions.dart';
import '../../design/styles.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First App by Flutter',
          style: primaryTextStyle,
        ),
        centerTitle: true,
        elevation: elevation0,
        backgroundColor: surfaceColor,
      ),
      body: Container(
        color: backgroundColor,
        child: const VehicleList(),
      ),
    );
  }
}
