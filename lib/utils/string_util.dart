import 'utils.dart';

String getPokeTypeString(PokeType pokeType) {
  return pokeType.toString().split('.')[1];
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
