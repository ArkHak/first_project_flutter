import 'package:flutter/material.dart';

import '../widgets/accent_button.dart';
import '../dimensions.dart';

class ErrorDialog extends StatelessWidget {
  final String descriptions;

  const ErrorDialog({super.key, required this.descriptions});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius8)),
      child: Padding(
        padding: const EdgeInsets.all(padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              "Oops...",
              style:
                  TextStyle(fontSize: fontSize24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: height8),
            Text(
              descriptions,
              style: const TextStyle(
                  fontSize: fontSize16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: height20),
            Center(
              child: AccentButton(
                  title: "Ok",
                  onTap: () {
                    Navigator.pop(context);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
