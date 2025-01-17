import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../design/colors.dart';
import '../../design/dimensions.dart';
import '../../design/images.dart';
import '../../design/styles.dart';

class SelectableItem extends StatelessWidget {
  final SvgPicture image;
  final double leftPadding;
  final String title;
  final bool isSelected;
  final Function() onTap;

  const SelectableItem({
    super.key,
    required this.image,
    required this.leftPadding,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

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
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(left: leftPadding, right: padding16),
            child: Row(
              children: <Widget>[
                image,
                const SizedBox(width: width16),
                Expanded(
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: body2TextStyle,
                  ),
                ),
                const SizedBox(width: width16),
                if (isSelected) checkImages
              ],
            ),
          ),
        ),
      ),
    );
  }
}
