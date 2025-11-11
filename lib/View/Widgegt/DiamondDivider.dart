import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiamondDivider extends StatelessWidget {
  const DiamondDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125.w,
      child: Row(
        children: [
          // Left line
          const Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),

          // Diamond shape
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            transform: Matrix4.rotationZ(0.785398), // 45 degrees = diamond shape
          ),

          // Right line
          const Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
