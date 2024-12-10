import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap(
    this.dimension, {
    super.key,
  });
  final double dimension;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension,
    );
  }
}
