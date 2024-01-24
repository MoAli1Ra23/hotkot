import 'package:flutter/material.dart';

import 'features/home/Page/my_home.dart';
import 'injection.dart';

void main() {
  configureDependencies('prod');
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:MyHome() ,
    );
  }
}
