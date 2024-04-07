import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;
//
// const staging = Environment('staging');
// const localhost = Environment('localhost');
// const production = Environment('production');

@InjectableInit()
Future<void> configureDependencies() async {
  await getIt.init();
}
