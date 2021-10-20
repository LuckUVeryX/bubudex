import '../models/models.dart';
import 'utils.dart';

List<PokeType> getTypeWeakness(TypeDefences typeDefences) {
  List<PokeType> weakness = [];
  Map<String, dynamic> map = typeDefences.toJson();
  map.removeWhere((key, value) {
    return double.tryParse(value)?.compareTo(1) == 1;
  });
  for (String key in map.keys) {
    weakness.add(pokeTypeFromString(key));
  }
  print(weakness);
  return weakness;
}

PokeHeight getPokeHeight(Pokemon pokemon) {
  return PokeHeight.medium;
}

PokeWeight getPokeWeight(Pokemon pokemon) {
  return PokeWeight.normal;
}
