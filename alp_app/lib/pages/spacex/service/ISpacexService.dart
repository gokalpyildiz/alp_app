import 'package:dio/dio.dart';

import '../../../core/network/network_manager.dart';
import '../model/spacex_model.dart';

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
