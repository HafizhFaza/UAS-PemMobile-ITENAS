// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:faker/faker.dart';
import 'package:uas_app/chat.dart';
import 'package:uas_app/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages = [Chat(), Settings()];
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: pages[currentPageIndex],
      bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
          ],
          initialActiveIndex: 0,
          onTap: (int i) {
            setState(() {
              currentPageIndex = i;
            });
          }),
    ));
  }
}
