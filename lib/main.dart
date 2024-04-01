import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:krypt/data/services/shared_preference_service.dart';
import 'package:krypt/di/injection.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:krypt/util/theme/colors.dart';
import 'package:krypt/util/theme/theme.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Firebase.initializeApp();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter(sharedPref: getIt.get<SharedPreferencesService>());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Krypt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: grey900),
        useMaterial3: true,
        primaryColor: green600,
        textTheme: textTheme,
        appBarTheme: appBarTheme,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "ProductSans",
      ),
    );
  }
}
