import 'package:flutter/material.dart';
import 'package:myapp/views/widgets/burger.dart';
import 'package:myapp/views/widgets/pizza.dart';
import 'package:myapp/views/widgets/setting.dart';
import 'package:myapp/views/widgets/waffles.dart';

class MyTabController extends StatelessWidget {
  MyTabController({super.key});

  List<Widget> myTabViews = [ Pizza(), Burger(), Waffles(), Setting()];

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: myTabViews,
    );
  }
}
