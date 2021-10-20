import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/poke_list_provider.dart';
import '../theme/theme.dart';

class SortBottomSheet extends StatelessWidget {
  const SortBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 0.6,
      expand: false,
      builder: (_, scrollController) {
        return Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sort', style: textTheme.headline6),
                  const SizedBox(height: 4),
                  const Text(
                      'Sort Pokémons alphabetically or by National Pokédex number!'),
                ],
              ),
              const _SortButton(
                text: 'Smallest number first',
                sortOrder: SortOrder.smallest,
              ),
              const _SortButton(
                text: 'Highest number first',
                sortOrder: SortOrder.highest,
              ),
              const _SortButton(
                text: 'A-Z',
                sortOrder: SortOrder.aToZ,
              ),
              const _SortButton(
                text: 'Z-A',
                sortOrder: SortOrder.zToA,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SortButton extends StatelessWidget {
  const _SortButton({
    Key? key,
    required this.sortOrder,
    required this.text,
  }) : super(key: key);

  final SortOrder sortOrder;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0),
      width: double.infinity,
      height: 60,
      child: Consumer<PokeListProvider>(builder: (_, pokeListProvider, __) {
        return ElevatedButton(
          style: pokeListProvider.sortOrder == sortOrder
              ? selectedButtonStyle
              : unselectedButtonStyle,
          onPressed: () {
            pokeListProvider.setSortOrder(sortOrder);
          },
          child: Text(text),
        );
      }),
    );
  }
}
