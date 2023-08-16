import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  const MyTab({super.key, required this.child});
  final child;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
        child: Icon(
          child,
          color: Colors.grey[600],
          size: 28,
        ),
      ),
    );
  }
}
