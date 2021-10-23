import '../../models/models.dart';
import '../../utils/utils.dart';

abstract class IPokeSummaryRepository {
  Future<List<PokeSummary>> getPokemons();

  void storeSortPreference(SortOrder order);

  SortOrder get sortOrder;
}
