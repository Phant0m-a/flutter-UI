import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils/notes_controller.dart';
import 'package:provider/provider.dart';

class MyNotes extends StatelessWidget {
  const MyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NotesController>(
        builder: (context, value, child) => Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      'Apple Notes',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                  ),
                  const SizedBox(height: 15),
                  CupertinoListSection.insetGrouped(
                    backgroundColor: CupertinoColors.systemGroupedBackground,
                    children: List.generate(
                      value.getNotes().length,
                      (index) => CupertinoListTile(
                          title: Text(value.getNotes()[index].text)),
                    ),
                  )
                ],
              ),
            ));
  }
}
