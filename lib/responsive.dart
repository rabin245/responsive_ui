import 'package:flutter/material.dart';

class ResponsiveUi extends StatelessWidget {
  const ResponsiveUi({
    Key? key,
    required this.desktop,
    required this.mobile,
  }) : super(key: key);

  final Widget mobile;
  final Widget desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobile;
        } else {
          return desktop;
        }
      },
    );
  }
}
