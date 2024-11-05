import 'package:flutter/material.dart';
import '../common/color_extension.dart';

class SettingSelectRow extends StatelessWidget {
  final Map t0bj;
  final VoidCallback onPressed;
  const SettingSelectRow(
      {super.key,
      required this.t0bj,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10 ),
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: TColor.secondaryText.withOpacity(0.5), width: 1),
                  borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                t0bj["value"],
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
