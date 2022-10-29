import 'package:alp_app/pages/spacex/model/spacex_model.dart';
import 'package:dio/dio.dart';

abstract class ISpacexService {
  final Dio dio;

  ISpacexService(this.dio);

  final String getSpacex = ISpacexServicePath.GET.rawValue;

  Future<SpacexModel?> getSpacexInfo();
}

enum ISpacexServicePath { GET }

extension ISpacexServicePathExtension on ISpacexServicePath {
  String get rawValue {
    switch (this) {
      case ISpacexServicePath.GET:
        return '/launches';
    }
  }
}
