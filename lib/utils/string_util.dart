import 'utils.dart';

String stringFromPokeType(PokeType pokeType) {
  return pokeType.toString().split('.')[1];
}

PokeType pokeTypeFromString(String pokeType) {
  return PokeType.values.firstWhere((element) {
    return pokeType == stringFromPokeType(element);
  });
}

String pokeIdToString(int id) {
  return id.toString().padLeft(3, '0');
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
