import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../common/color_extension.dart';

class SettingSwitchRow extends StatelessWidget {
  final Map t0bj;
  final Function(bool)? onChanged;

  const SettingSwitchRow(
      {super.key, required this.t0bj, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            t0bj["name"],
            style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          CupertinoSwitch(
            activeColor: TColor.primary,
            value: t0bj["value"] == "true", onChanged: onChanged),
        ],
      ),
    );
  }
}
