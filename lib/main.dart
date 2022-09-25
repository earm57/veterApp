import 'package:flutter/material.dart';
import 'package:veterapp/homepage.dart';

void main() => runApp(const VeterApp());

class VeterApp extends StatelessWidget {
  const VeterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomepageVeterApp();
  }
}
