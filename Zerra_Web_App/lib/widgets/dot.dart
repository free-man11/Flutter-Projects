import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 850, horizontal: 200),
      child: SizedBox(
        width: 88,
        height: 8,
        child: Row(
          children: [
            Container(
              width: 40,
              height: 8,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Opacity(
              opacity: 0.40,
              child: Container(
                width: 8,
                height: 8,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Opacity(
              opacity: 0.40,
              child: Container(
                width: 8,
                height: 8,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Opacity(
              opacity: 0.40,
              child: Container(
                width: 8,
                height: 8,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
