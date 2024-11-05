import 'package:flutter/material.dart';
import '../common/color_extension.dart';

class ConnectRow extends StatelessWidget {
  final Map t0bj;
  final VoidCallback onPressed;
  final bool isActive;
  const ConnectRow(
      {super.key,
      required this.t0bj,
      required this.isActive,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        decoration: BoxDecoration(
          color: t0bj["color"],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Image.asset(
              t0bj["icon"],
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 30,
              height: 40,
            ),
            Expanded(
              child: Text(
                t0bj["name"],
                style: TextStyle(
                    color: TColor.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              width: 30,
              height: 40,
            ),
            Image.asset(
              "assets/img/tick.png",
              width: 30,
              height: 30,
              color: isActive ? Colors.green : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
