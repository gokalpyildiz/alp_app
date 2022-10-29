import 'package:alp_app/pages/spacex/model/spacex_model.dart';
import 'package:alp_app/pages/spacex/service/ISpacexService.dart';
import 'package:dio/dio.dart';

class SpacexService extends ISpacexService {
  SpacexService(Dio dio) : super(dio);

  @override
  Future<SpacexModel?> getSpacexInfo() async {
    Response? response;
    try {
      response = await dio.get(getSpacex);
    } on DioError catch (e) {
      response = e.response;
      return null;
    }
    var data = response.data as Map<String, dynamic>;
    var spacexInfo = SpacexModel.fromJson(data['data'] as Map<String, dynamic>);
    return spacexInfo;
  }
}
