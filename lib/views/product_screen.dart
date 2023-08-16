import 'package:flutter/material.dart';
import 'package:myapp/views/widgets/my_tab.dart';
import 'package:myapp/views/widgets/notification.dart';
import 'package:myapp/views/widgets/tab_controller.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  // List<Widget> pageViews = [
  //   [],
  // ];
  List<Widget> tablist = [
    const MyTab(child: Icons.piano),
    const MyTab(child: Icons.bluetooth),
    const MyTab(child: Icons.calendar_today),
    const MyTab(child: Icons.on_device_training_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: tablist.length,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 36,
                  ),
                  onPressed: () {},
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 36,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                //rich text
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 29, vertical: 12),
                    child: RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                          text: 'I want to eat ',
                          style: TextStyle(color: Colors.black, fontSize: 24)),
                      TextSpan(
                          text: 'Food',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 38))
                    ]))),

                const SizedBox(height: 19),

                TabBar(tabs: tablist),

                Expanded(child: MyTabController())
              ],
            )),
      ),
    );
  }
}
