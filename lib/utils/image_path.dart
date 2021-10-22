import 'utils.dart';

// Pokemon type icon
String getPokeTypeIcon(PokeTypes pokeType) {
  final type = stringFromPokeTypes(pokeType);
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

int getGenerationInt(Generation generation) {
  switch (generation) {
    case Generation.I:
      return 1;
    case Generation.II:
      return 2;
    case Generation.III:
      return 3;
    case Generation.IV:
      return 4;
    case Generation.V:
      return 5;
    case Generation.VI:
      return 6;
    case Generation.VII:
      return 7;
    case Generation.VIII:
      return 8;
  }
}

List<String> getGenerationImg(Generation generation) {
  int i = getGenerationInt(generation);
  return [
    'assets/poke_generations/generation$i/1.png',
    'assets/poke_generations/generation$i/2.png',
    'assets/poke_generations/generation$i/3.png',
  ];
}

String kPokeballPattern = 'assets/poke_patterns/pokeball.svg';
String k6x3Pattern = 'assets/poke_patterns/6x3.svg';
