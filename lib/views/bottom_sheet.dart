import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

// void _bottomSheetController() {

// }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        color: Colors.green[300],
        child: Center(
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.green)),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        color: Colors.amber[200],
                        height: 450,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                             const Text(
                                'C a r t - i t e m s',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200,
                                    fontSize: 23),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => Colors.orange)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Accept Order'))
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Text('Click Me')),
        ),
      ),
    );
  }
}
