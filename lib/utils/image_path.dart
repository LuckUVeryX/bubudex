import 'utils.dart';

// Pokemon type icon
String getPokeTypeIcon(PokeType pokeType) {
  final type = getPokeTypeString(pokeType);
  return 'assets/poke_types/$type.svg';
}
