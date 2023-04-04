import 'package:flutter/material.dart';
import 'package:quick_fix/feature/home/nav_wrapper.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationWrapper());
  }
}
