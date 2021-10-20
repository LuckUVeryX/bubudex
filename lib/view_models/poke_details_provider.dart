import 'package:flutter/foundation.dart';

enum PokeDetailsStatus { init, done, error }

class PokeDetailsProvider extends ChangeNotifier {
  PokeDetailsStatus _status = PokeDetailsStatus.init;

  PokeDetailsStatus get status => _status;

  void setStatus(PokeDetailsStatus status) {
    _status = status;
    notifyListeners();
  }

  void init() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      setStatus(PokeDetailsStatus.done);
    } on Exception catch (e) {
      debugPrint(e.toString());
      setStatus(PokeDetailsStatus.error);
    }
  }
}
