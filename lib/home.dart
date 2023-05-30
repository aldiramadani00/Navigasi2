import 'package:flutter/material.dart';
// ignore: implementation_imports, unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
// ignore: implementation_imports, unused_import
import 'package:flutter/src/widgets/placeholder.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
    );
  }
}
