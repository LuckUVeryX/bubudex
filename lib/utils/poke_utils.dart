import '../models/models.dart';
import 'utils.dart';

List<PokeType> getTypeWeakness(TypeDefences typeDefences) {
  Map<PokeType, double?> map = typeDefences.toMap();
  map.removeWhere((key, value) {
    // remove if defense value is null or less than 1
    return value == null || value < 1;
  });
  return map.keys.toList();
}

PokeHeight getPokeHeight(Pokemon pokemon) {
  return PokeHeight.medium;
}

PokeWeight getPokeWeight(Pokemon pokemon) {
  return PokeWeight.normal;
}
