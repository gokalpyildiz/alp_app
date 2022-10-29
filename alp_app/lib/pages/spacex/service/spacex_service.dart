import 'package:alp_app/pages/spacex/model/spacex_model.dart';
import 'package:alp_app/pages/spacex/service/ISpacexService.dart';
import 'package:dio/dio.dart';

class SpacexService extends ISpacexService {
  @override
  Future<List<SpacexModel>> getSpacexLaunchingInfo() async {
    Response? response;
    List<SpacexModel> launchList = [];
    try {
      response = await dio.get(getSpacex);
    } on DioError catch (e) {
      response = e.response;

      return <SpacexModel>[];
    }
    if (response.data != null) {
      launchList = [for (var item in response.data) SpacexModel.fromJson(item as Map<String, dynamic>)];
      return launchList;
    }
    return <SpacexModel>[];
  }
}
