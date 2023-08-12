import 'package:flutter/material.dart';
import 'package:responsive/responsive/responsive_layer.dart';
import 'package:responsive/widgets/desktop_body.dart';
import 'package:responsive/widgets/mobile_body.dart';
import 'package:responsive/widgets/tablet_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(title: Text("data"),),
      body: ResponsiveLayout(
          mobilebody: MyMobileBody(),
          desktopbody: MyDeskTopView(),
          tabletbody: MyTabletBody()),
    );
  }
}
