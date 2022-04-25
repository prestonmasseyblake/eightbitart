import 'dart:ffi';

import 'package:flutter/material.dart';
class PlaceholderWidget extends StatelessWidget {
  final Color color;
  final double number;
  PlaceholderWidget(this.color, this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
