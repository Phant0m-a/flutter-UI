import 'package:flutter/material.dart';
import 'package:myapp/views/widgets/my_tab.dart';
import 'package:myapp/views/widgets/tab_controller.dart';

class MyNotification extends StatelessWidget {
  MyNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 36,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0, top: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0)),
                    color: Colors.green[100],
                  ),
                  child: Text(
                    "0",
                    style: TextStyle(
                        color: Colors.green[500],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              //rich text
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 29, vertical: 12),
                  child: Text(
                    'No new notifications!',
                    style: TextStyle(color: Colors.grey[600], fontSize: 18),
                  )),
            ],
          )),
    );
  }
}
