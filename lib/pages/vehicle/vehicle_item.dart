import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../design/colors.dart';
import '../../design/dimensions.dart';
import '../../design/images.dart';
import '../../design/styles.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height64,
      child: Card(
        color: surfaceColor,
        margin: EdgeInsets.zero,
        elevation: elevation006,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius8)),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius8),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: padding8, right: padding16),
            child: Row(
              children: <Widget>[vehicleMotorcycleImages, _title(), _state()],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: padding6, right: padding6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "BWM M3 SUPER",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: body2TextStyle,
            ),
            if (false)
              Text(
                "No Driver",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: hint1TextStyle,
              )
            else
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(text: "Driver", style: hint1TextStyle),
                  TextSpan(text: "Maximus", style: body2TextStyle)
                ]),
              )
          ],
        ),
      ),
    );
  }

  Widget _state() {
    return InkWell(
      onTap: () {},
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            statePickupImages,
            const Text(
              "pickup",
              style: hint2TextStyle,
            )
          ]),
    );
  }
}
