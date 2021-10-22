import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';

/// Http client with retry and logging
class ApiService {
  Future<http.Response> get(String url) async {
    debugPrint('GET Request: $url');
    Uri uri = Uri.parse(url);
    final res = await retry(() => http.get(uri));
    // debugPrint('GET Response: ${res.body}');
    return res;
  }
}
