import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import 'core/service/api_provider.dart';
import 'core/utils/bindings.dart';
import 'core/utils/global.dart';
import 'core/utils/routes.dart';

GetIt sl = GetIt.instance;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sl.registerLazySingleton<APIProvider>(() => APIProvider());
  HttpOverrides.global = MyHttpOverrides();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      title: 'Fabcurate',
      debugShowCheckedModeBanner: false,
      initialBinding: BaseBinding(),
      initialRoute: initialRoute,
      getPages: routes,
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
