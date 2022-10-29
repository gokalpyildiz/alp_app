import 'package:alp_app/app/app_dependency_injection.dart';
import 'package:alp_app/pages/spacex/model/spacex_model.dart';
import 'package:alp_app/pages/spacex/service/spacex_service.dart';

class SpacexViewModel {
  final _spacexService = locator<SpacexService>();

  late SpacexModel currentLaunching;
  Future<void> fetchLaunchingInfo() async {
    try {
      currentLaunching = await _spacexService.getSpacexLaunchingInfo() ?? SpacexModel();
    } catch (e) {
      currentLaunching = SpacexModel();
    }
  }
}
