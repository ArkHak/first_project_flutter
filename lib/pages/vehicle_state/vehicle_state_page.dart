import 'package:first_project/pages/vehicle_state/vehicle_state_list.dart';
import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../../design/widgets/back_pressed_app_bar.dart';

class VehicleStatePage extends StatelessWidget {
  const VehicleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackPressedAppBar(
          title: "Update vehicle state",
          onBackPressed: () {
            Navigator.pop(context);
          }),
      body: Container(
        color: backgroundColor,
        child: const VehicleStateList(),
      ),
    );
  }
}
