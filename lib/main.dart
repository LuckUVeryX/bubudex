import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'repository/repository.dart';
import 'routes/app_router.dart';
import 'services/services.dart';
import 'view_models/view_models.dart';
import 'views/theme/theme.dart';

void main() async {
  HiveService hiveService = await _initHiveServices();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
    final _hiveService = Provider.of<HiveService>(context);
    return MultiProvider(
      providers: [
        Provider<ApiService>(create: (_) => ApiService()),
        ChangeNotifierProvider(
          create: (_) => SettingsProvider(SettingsRepository(_hiveService)),
        )
      ],
      child: Consumer<SettingsProvider>(builder: (_, provider, __) {
        return MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: provider.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
        );
      }),
    );
  }
}
