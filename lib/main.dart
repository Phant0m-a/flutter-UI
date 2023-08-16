import 'package:flutter/material.dart';
import 'package:myapp/utils/notes_controller.dart';
import 'package:myapp/views/product_screen.dart';
import 'package:myapp/views/widgets/notification.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotesController(),
      builder: (context, child) => MaterialApp(
          title: 'Coffee App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.amber,
          ),
          routes: {
            '/notification':(context) => MyNotification(),
          },
          home: const HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ProductScreen();
  }
}
