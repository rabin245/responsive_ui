import 'package:flutter/material.dart';
import 'package:responsive_ui/desktop_ui.dart';
import 'package:responsive_ui/mobile_ui.dart';
import 'package:responsive_ui/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const Scaffold(
        body: ResponsiveUi(
          desktop: DesktopUi(),
          mobile: MobileUi(),
        ),
      ),
    );
  }
}
