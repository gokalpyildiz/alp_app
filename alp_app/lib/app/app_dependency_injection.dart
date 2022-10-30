import 'package:get_it/get_it.dart';

import '../pages/spacex/service/spacex_service.dart';

final locator = GetIt.instance;
void setupGetItLocators() {
  locator.registerLazySingleton(() => SpacexService());
}
