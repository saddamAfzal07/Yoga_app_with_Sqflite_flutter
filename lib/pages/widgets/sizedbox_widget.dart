import 'package:flutter/material.dart';

class SizedboxWidget extends StatelessWidget {
  final height;
  const SizedboxWidget({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
