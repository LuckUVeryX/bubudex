import '../services/hive_service.dart';
import 'repository.dart';

class SettingsRepository extends ISettingsRepository {
  SettingsRepository(this._hiveService);
  final HiveService _hiveService;

  @override
  bool get isDarkTheme => _hiveService.isDarkTheme;

  @override
  void setDarkTheme(bool value) async {
    await _hiveService.setDarkTheme(value);
  }
}
