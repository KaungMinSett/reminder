import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  // 1
  runApp(const Reminder());
}

class Reminder extends StatelessWidget {
  // 2
  const Reminder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    // TODO: Apply Home widget
    // 3
    return const MaterialApp(
        debugShowCheckedModeBanner: false,


        home:Home()
    );
  }
}