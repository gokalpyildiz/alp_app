import 'package:alp_app/pages/spacex/service/spacex_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
void setupGetItLocators() {
  locator.registerLazySingleton(() => SpacexService());
}
