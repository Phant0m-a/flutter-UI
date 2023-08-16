import 'package:flutter/material.dart';

class CustomDropMenu extends StatefulWidget {
  const CustomDropMenu({super.key});

  @override
  State<CustomDropMenu> createState() => _CustomDropMenuState();
}

class _CustomDropMenuState extends State<CustomDropMenu> {
  String dropDownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Custom Drop Down'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: Container(
        color: Colors.orange,
        child: Center(
          child: DropdownButton(
              value: dropDownValue,
              icon: const Icon(Icons.menu),
              items: const [
                DropdownMenuItem(value: 'one', child: Icon(Icons.favorite)),
                DropdownMenuItem(
                    value: 'two',
                    child: Icon(Icons.youtube_searched_for_sharp)),
                DropdownMenuItem(value: 'Three', child: Icon(Icons.facebook)),
              ],
              onChanged: (newValue) {
                setState(() {
                  dropDownValue = newValue.toString();
                });
              }),
        ),
      ),
    );
  }
}
