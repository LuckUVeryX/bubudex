import 'utils.dart';

// Pokemon type icon
String getPokeTypeIcon(PokeType pokeType) {
  final type = stringFromPokeType(pokeType);
  return 'assets/poke_types/$type.svg';
}

String getPokeHeightIcon(PokeHeight pokeHeight) {
  final height = stringFromPokeHeight(pokeHeight);
  return 'assets/poke_heights/$height.svg';
}

String getPokeWeightIcon(PokeWeight pokeWeight) {
  final weight = stringFromPokeWeight(pokeWeight);
  return 'assets/poke_weights/$weight.svg';
}
