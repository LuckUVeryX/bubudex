import 'package:flutter/material.dart';

import '../components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(PokeIcons.generation)),
          IconButton(onPressed: () {}, icon: const Icon(PokeIcons.sort)),
          IconButton(onPressed: () {}, icon: const Icon(PokeIcons.filter)),
        ],
      ),
      body: const Center(child: Text('Home Page')),
    );
  }
}
