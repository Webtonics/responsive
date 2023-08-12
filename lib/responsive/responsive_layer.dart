import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobilebody,
      required this.desktopbody,
      required this.tabletbody});
  final Widget mobilebody;
  final Widget desktopbody;
  final Widget tabletbody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1080) {
          return desktopbody;
        } else if ((constraints.maxWidth >= 700) &&
            (constraints.maxWidth <= 1079)) {
          return tabletbody;
        }
        // else if (constraints.maxWidth <= 399) {
        //   return mobilebody;
        else {
          return mobilebody;
        }
      },
    );
  }
}
