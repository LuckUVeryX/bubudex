import 'package:flutter/foundation.dart';

import '../repository/base_repositories/base_repositories.dart';

class SettingsProvider extends ChangeNotifier {
  SettingsProvider(this._settingsRepository) {
    _isDarkTheme = true;
    _isDarkTheme = _settingsRepository.isDarkTheme;
  }
  final ISettingsRepository _settingsRepository;

  late bool _isDarkTheme;

  bool get isDarkTheme => _isDarkTheme;

  void toggleDarkTheme() {
    _isDarkTheme = !_isDarkTheme;
    _settingsRepository.setDarkTheme(_isDarkTheme);
    notifyListeners();
  }

  void init() {
    _isDarkTheme = _settingsRepository.isDarkTheme;
  }
}
