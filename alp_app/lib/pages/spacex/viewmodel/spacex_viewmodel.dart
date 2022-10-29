import '../../../app/app_dependency_injection.dart';
import '../model/spacex_model.dart';
import '../service/spacex_service.dart';

class SpacexViewModel {
  final _spacexService = locator<SpacexService>();

  var launching = <SpacexModel>[];
  Future<void> fetchLaunchingInfo() async {
    try {
      launching = await _spacexService.getSpacexLaunchingInfo();
    } catch (e) {
      print('hata');
      launching = <SpacexModel>[];
    }
  }
}
