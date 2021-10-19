import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/models.dart';
import '../utils/utils.dart';

class HiveService {
  late Box<Pokemon> pokemonDb;

  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(PokemonAdapter());
    pokemonDb = await Hive.openBox(HiveBoxId.pokemonDb);

    debugPrint('Initialized Hive Service');
  }
}
