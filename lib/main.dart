import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routes/app_router.dart';
import 'services/services.dart';
import 'views/theme/theme.dart';

void main() async {
  HiveService hiveService = await _initHiveServices();
  runApp(
    Provider.value(value: hiveService, child: MyApp()),
  );
}

Future<HiveService> _initHiveServices() async {
  final HiveService hiveService = HiveService();
  await hiveService.init();
  return hiveService;
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ApiService>(create: (_) => ApiService()),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: AppTheme.theme,
      ),
    );
  }
}
