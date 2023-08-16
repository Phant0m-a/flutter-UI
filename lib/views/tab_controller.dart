import 'package:flutter/material.dart';
import 'package:myapp/views/bottom_sheet.dart';
import 'package:myapp/views/drop_down_menu.dart';
import 'package:myapp/views/rows.dart';

class CustomTabController extends StatelessWidget {
  const CustomTabController({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      animationDuration: const Duration(seconds: 0),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('G a l l e r y'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.green[200],
              child: Center(
                child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CustomDropMenu())),
                    child: const Icon(Icons.home)),
              ),
            ),
            Container(
              color: Colors.blue[200],
              child: Center(
                child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CustomRows())),
                    child: const Icon(Icons.favorite)),
              ),
            ),
            Container(
              color: Colors.lime[200],
              child: Center(
                child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CustomBottomSheet())),
                    child: Icon(
                      Icons.settings,
                      color: Colors.grey[700],
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
