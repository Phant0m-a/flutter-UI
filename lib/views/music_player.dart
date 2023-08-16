import 'package:flutter/material.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: MorphBox(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text(
                    'P L A Y L I S T',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: MorphBox(child: Icon(Icons.menu_outlined)))
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  MorphBox(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset('assets/music_logo.png')),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Memories',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Hypnoise',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18))
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 28,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('0:00'),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text('3:45')
                    ],
                  ),
                  const SizedBox(height: 25),
                  MorphBox(
                    child: LinearProgressIndicator(
                      value: 4.0,
                      color: Colors.green[300],
                      minHeight: 8,
                      backgroundColor: Colors.blue[300],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 100,
                    child: Row(
                      children: const [
                        Expanded(
                            child: SizedBox(
                                height: 70,
                                width: 60,
                                child: MorphBox(
                                    child: Icon(Icons.skip_previous)))),
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: SizedBox(
                                  height: 70,
                                  width: 60,
                                  child:
                                      MorphBox(child: Icon(Icons.play_arrow))),
                            )),
                        Expanded(
                            child: SizedBox(
                                height: 70,
                                width: 60,
                                child: MorphBox(child: Icon(Icons.skip_next)))),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MorphBox extends StatelessWidget {
  const MorphBox({super.key, required this.child});
  // ignore: prefer_typing_uninitialized_variables
  final child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),

          //shadow
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),

            //below
            const BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5, -5),
            ),
          ]),
      child: child,
    );
  }
}
