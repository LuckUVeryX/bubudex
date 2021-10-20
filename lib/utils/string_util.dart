import 'utils.dart';

String stringFromPokeType(PokeType pokeType) {
  return pokeType.toString().split('.')[1];
}

PokeType pokeTypeFromString(String pokeType) {
  return PokeType.values.firstWhere((element) {
    return pokeType == stringFromPokeType(element);
  });
}

String stringFromPokeHeight(PokeHeight pokeHeight) {
  return pokeHeight.toString().split('.')[1];
}

String stringFromPokeWeight(PokeWeight pokeWeight) {
  return pokeWeight.toString().split('.')[1];
}

String pokeIdToString(int id) {
  return id.toString().padLeft(3, '0');
}

String getImageUrl(int id) {
  return 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/${pokeIdToString(id)}.png';
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
