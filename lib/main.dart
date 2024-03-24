import 'package:flutter/material.dart';
import 'package:krypt/util/routing/app_router.dart';
import 'package:krypt/util/theme/colors.dart';
import 'package:krypt/util/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();

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
