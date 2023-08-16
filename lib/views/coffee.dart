import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_rounded),
        actions:const [
           Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.green,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              label: 'Favourite')
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),

          const Text(
            'Find the best coffee for you',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 25),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search for coffee ...',
                // hintStyle: TextStyle(color: Colors.green),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
          ),

          const SizedBox(height: 25),

          //listview
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height * 0.1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                //add pills

                Container(
                  padding: const EdgeInsets.only(right: 15),
                  child: const Text(
                    'latte',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                const Pill(name: 'Cappucino'),
                const Pill(name: 'Expresso'),
              ],
            ),
          ),

          const SizedBox(height: 0),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height * 0.3,
            child:

                // GridView(,)

                ListView(scrollDirection: Axis.horizontal, children: [
              Container(
                  margin: const EdgeInsets.only(right: 5),
                  color: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(12),
                      //   child: Image.asset('images/coffee1.jpg', width: 150,height: 150,),
                      // ),
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/coffee2.jpg',
                            height: 150,
                          ),
                        ),
                      ),

                      // SizedBox(height: 5),

                      const Text('Cappucino'),

                      const SizedBox(height: 2),

                      const Text(
                        'Buy coffee now...',
                        style: TextStyle(fontSize: 8),
                      ),
                    ],
                  )),
              Container(
                  color: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/coffee2.jpg',
                            height: 150,
                          ),
                        ),
                      ),

                      // SizedBox(height: 5),

                      SizedBox(
                        child: Column(
                          children: [
                            const Text(
                              'Cappucino',
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 2),
                            const Text(
                              'Buy coffee now...',
                              style: TextStyle(fontSize: 10),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                     Icon(
                                      Icons.currency_bitcoin,
                                      size: 18,
                                      color: Colors.green,
                                    ),
                                     SizedBox(
                                      width: 2,
                                    ),
                                     Text(
                                      '4.20',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(12)),
                                  padding: const EdgeInsets.all(3),
                                  child: const Icon(Icons.add),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ]),
          )
        ],
      ),
    );
 
  }
}


class Pill extends StatelessWidget {
  const Pill({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15),
      child: Text(
        name,
        style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    );
  }
}
