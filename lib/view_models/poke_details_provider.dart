import 'package:flutter/foundation.dart';

import '../models/models.dart';
import '../repository/repository.dart';
import '../utils/utils.dart';

enum PokeDetailsStatus { init, done, error }

class PokeDetailsProvider extends ChangeNotifier {
  PokeDetailsProvider(this._repository, this._id);
  final IPokeDetailsRepository _repository;
  final int _id;

  PokeDetailsStatus _status = PokeDetailsStatus.init;
  PokeDetailsStatus get status => _status;

  void setStatus(PokeDetailsStatus status) {
    _status = status;
    notifyListeners();
  }

  late final PokeSummary _pokeSummary;
  PokeSummary get pokeSummary => _pokeSummary;

  late final PokeSpecies _pokeSpecies;
  PokeSpecies get pokeSpecies => _pokeSpecies;

  late final Pokemon _pokemon;
  Pokemon get pokemon => _pokemon;

  late final PokeLocationAreas _pokeLocationAreas;
  PokeLocationAreas get locationAreas => _pokeLocationAreas;

  late final PokeEvolution _pokeEvolution;
  PokeEvolution get pokeEvolution => _pokeEvolution;

  List<PokeEvolutionInfo> get evoChain {
    List<PokeEvolutionInfo> evoChain = [];
    ChainLink chain = _pokeEvolution.chain;

    while (true) {
      EvolutionDetail? detail;
      if (chain.evolutionDetails?.isNotEmpty == true) {
        detail = chain.evolutionDetails?.first;
      } else {
        detail = null;
      }
      int id = int.parse(chain.species.url
          .replaceAll('https://pokeapi.co/api/v2/pokemon-species/', '')
          .replaceAll('/', ''));

      String? getRelativePhysicalStats;
      if (detail?.relativePhysicalStats == null) {
        getRelativePhysicalStats = null;
      } else {
        if (detail?.relativePhysicalStats == 1) {
          getRelativePhysicalStats = 'Attack > Defense';
        }
        if (detail?.relativePhysicalStats == 0) {
          getRelativePhysicalStats = 'Attack = Defense';
        }
        if (detail?.relativePhysicalStats == -1) {
          getRelativePhysicalStats = 'Attack < Defense';
        }
      }

      evoChain.add(
        PokeEvolutionInfo(
          id: id,
          speciesName: chain.species.name,
          minLevel: detail?.minLevel,
          item: detail?.item?.name,
          needsOverworldRain: detail?.needsOverworldRain ?? false,
          turnUpsideDown: detail?.turnUpsideDown ?? false,
          heldItem: detail?.heldItem?.name,
          knownMove: detail?.knownMove?.name,
          knownMoveType: detail?.knownMoveType?.name,
          location: detail?.location?.name,
          minAffection: intToString(detail?.minAffection),
          minBeauty: intToString(detail?.minBeauty),
          minHappiness: intToString(detail?.minHappiness),
          partySpecies: detail?.partySpecies?.name,
          partyType: detail?.partyType?.name,
          relativePhysicalStats: getRelativePhysicalStats,
          timeOfDay:
              detail?.timeOfDay?.isNotEmpty == true ? detail?.timeOfDay : null,
          tradeSpecies: detail?.tradeSpecies?.name,
        ),
      );
      if (chain.evolvesTo.isNotEmpty) {
        chain = chain.evolvesTo.first;
      } else {
        break;
      }
    }
    return evoChain;
  }

  void init() async {
    try {
      _pokeSummary = _repository.getPokeSummary(_id);
      await Future.wait([
        _initPokemon(),
        _initPokeSpecies(),
        _initEncounters(),
      ]);
      await _initPokeEvolution();
      setStatus(PokeDetailsStatus.done);
    } on Exception catch (e) {
      debugPrint(e.toString());
      setStatus(PokeDetailsStatus.error);
    }
  }

  Future<void> _initPokemon() async {
    _pokemon = await _repository.getPokemon(_id);
  }

  Future<void> _initPokeSpecies() async {
    _pokeSpecies = await _repository.getSpecies(_id);
  }

  Future<void> _initEncounters() async {
    _pokeLocationAreas = await _repository.getEncounters(_id);
  }

  Future<void> _initPokeEvolution() async {
    _pokeEvolution =
        await _repository.getEvolutions(_id, _pokeSpecies.evolutionChain.url);
  }
}
