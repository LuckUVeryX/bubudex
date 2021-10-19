import 'utils.dart';

// Pokemon type icon
String getPokeTypeIcon(PokeType pokeType) {
  final type = stringFromPokeType(pokeType);
  return 'assets/poke_types/$type.svg';
}
