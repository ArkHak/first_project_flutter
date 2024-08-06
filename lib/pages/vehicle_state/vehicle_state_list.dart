import 'package:first_project/design/images.dart';
import 'package:first_project/design/widgets/selectable_item.dart';
import 'package:flutter/material.dart';

import '../../design/utils/size_utils.dart';
import '../../design/widgets/accent_button.dart';
import '../../design/dimensions.dart';

class VehicleStateList extends StatefulWidget {
  const VehicleStateList({super.key});

  @override
  State<VehicleStateList> createState() => _DriverListState();
}

class _DriverListState extends State<VehicleStateList> {
  int? _selectedStateIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(),
      Align(alignment: Alignment.bottomCenter, child: _saveButton())
    ]);
  }

  Widget _list() {
    return ListView.separated(
        itemCount: 15,
        padding: EdgeInsets.only(
            left: padding16,
            top: padding16,
            right: padding16,
            bottom: getListBottomPadding(context)),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: height8);
        },
        itemBuilder: (BuildContext context, int index) {
          final bool isSelected = _selectedStateIndex == index;
          return SelectableItem(
            image: statePickupImages,
            leftPadding: padding16,
            title: "Pickup",
            isSelected: isSelected,
            onTap: () {
              setState(() {
                _selectedStateIndex = index;
              });
            },
          );
        });
  }

  Widget _saveButton() {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(
          right: padding16, bottom: padding8, left: padding16),
      child: AccentButton(title: "Save", onTap: () {}),
    ));
  }
}
