import 'package:flutter/material.dart';

class CustomRows extends StatelessWidget {
  const CustomRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[300],
      child: Card(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                      child: Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: const Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                    ),
                    label: const Text('Ahsan Ali'),
                  )),
                  Expanded(
                      child: Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: const Icon(
                        Icons.person_3,
                        color: Colors.orange,
                      ),
                    ),
                    label: const Text('Foo Bar'),
                  )),
                  Expanded(
                      child: Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: const Icon(
                        Icons.person_2,
                        color: Colors.blue,
                      ),
                    ),
                    label: const Text('Jane Doe'),
                  )),
                ],
              ),
              const SizedBox(height: 25),
              Wrap(
                spacing: 60,
                runSpacing: 5,
                children: List.generate(
                    10,
                    (index) => Chip(
                          avatar: const CircleAvatar(
                            backgroundColor: Colors.black,
                            child:  Icon(
                              Icons.person,
                              color: Colors.orange,
                            ),
                          ),
                          label: Text('im index $index'),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
