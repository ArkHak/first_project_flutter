import 'package:first_project/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../../design/dimensions.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First App by Flutter',
          style: TextStyle(
            color: primaryColor,
            fontSize: fontSize16,
            fontWeight: FontWeight.w500,
          ),
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
