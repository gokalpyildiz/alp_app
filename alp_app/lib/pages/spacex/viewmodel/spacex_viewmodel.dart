import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/app_dependency_injection.dart';
import '../bloc/spacex_bloc.dart';
import '../bloc/spacex_event.dart';
import '../model/spacex_model.dart';
import '../service/spacex_service.dart';

class SpacexViewModel {
  final _spacexService = locator<SpacexService>();

  var launching = <SpacexModel>[];
  Future<void> fetchLaunchingInfo(BuildContext context) async {
    try {
      launching = await _spacexService.getSpacexLaunchingInfo();
    } catch (e) {
      // ignore: avoid_print
      print('error' + e.toString());
      launching = <SpacexModel>[];
    }
    context.read<SpacexBloc>().add(const SpacexPageLoaded());
  }

  Future<void> refreshLaunches(BuildContext context) async {
    fetchLaunchingInfo(context);
    context.read<SpacexBloc>().add(const SpacexPageRefresh());
    //a++;
    //fetchLaunchingInfo(context);
  }

  var a = 0;
  SpacexModel get lastLaunch => launching.last;
}
