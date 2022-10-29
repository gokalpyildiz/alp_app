import 'package:alp_app/core/network/network_manager.dart';
import 'package:alp_app/pages/spacex/model/spacex_model.dart';
import 'package:dio/dio.dart';

abstract class ISpacexService {
  final networkManager = NetworkManager.instance;
  Dio get dio => networkManager.dio;

  final String getSpacex = ISpacexServicePath.GET.rawValue;

  Future<List<SpacexModel>?> getSpacexLaunchingInfo();
}

// ignore: constant_identifier_names
enum ISpacexServicePath { GET }

extension ISpacexServicePathExtension on ISpacexServicePath {
  String get rawValue {
    switch (this) {
      case ISpacexServicePath.GET:
        return '/launches/';
    }
  }
}
