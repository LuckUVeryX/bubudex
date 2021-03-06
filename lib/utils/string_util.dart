import 'utils.dart';

String stringFromPokeTypes(PokeTypes pokeType) {
  return pokeType.toString().split('.')[1];
}

PokeTypes pokeTypesFromString(String pokeType) {
  return PokeTypes.values.firstWhere((element) {
    return pokeType == stringFromPokeTypes(element);
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

String formatStat(String stat) {
  switch (stat) {
    case 'hp':
      return 'HP';
    case 'special-attack':
      return 'Sp.Atk';
    case 'special-defense':
      return 'Sp.Def';
    default:
      return stat.capitalize();
  }
}

String? intToString(int? val) {
  if (val == null) {
    return null;
  } else {
    return val.toString();
  }
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String capitalizeEvery() {
    List<String> ls = split(' ');
    for (int i = 0; i < ls.length; i++) {
      ls[i] = ls[i].capitalize();
    }
    return ls.join(' ');
  }
}
