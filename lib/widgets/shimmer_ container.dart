import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmeringContainer extends StatelessWidget {
   const ShimmeringContainer.rectangular({super.key,
    required this.height,
  });
  final double height;


  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade200,
      child: Container(
        height: height,

        color: Colors.grey,
      ),
    );
  }
}
