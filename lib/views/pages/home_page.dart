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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: CustomScrollView(
          slivers: [
            const HomeAppBar(),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, i) => const PokeCard(),
                childCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
