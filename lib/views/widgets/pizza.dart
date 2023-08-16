import 'package:flutter/material.dart';
import 'package:myapp/views/widgets/my_tile.dart';

class Pizza extends StatelessWidget {
  Pizza({super.key});

  List pizzaList = [
    //pizza name, price, color, icon / image
    ['Chicken Pizza', "1200", Colors.green, Icons.local_pizza],
    ['Special Pizza', "1500", Colors.blue, Icons.local_pizza_outlined],
    ['Red Chilli Pizza', "1999", Colors.purple, Icons.local_pizza_rounded],
    ['Mexican Pizza', "2500", Colors.pink, Icons.local_pizza_outlined],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            itemCount: pizzaList.length,
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1 / 1.5),
            itemBuilder: ((context, index) => MYTile(
                  flavour: pizzaList[index][0],
                  price: pizzaList[index][1],
                  color: pizzaList[index][2],
                  icon: pizzaList[index][3],
                ))));
  }
}
