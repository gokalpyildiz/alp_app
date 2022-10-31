import 'package:alp_app/extensions/context_extensions.dart';
import 'package:alp_app/product/widgets/busy_indicator/busy_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../product/widgets/constants/image_path_constants/svg_image_path.dart';
import '../../../product/widgets/nation_text/nation_text.dart';
import '../bloc/spacex_bloc.dart';
import '../bloc/spacex_state.dart';
import '../model/spacex_model.dart';
import '../viewmodel/spacex_viewmodel.dart';

// ignore: must_be_immutable
class AllLaunchesPage extends StatelessWidget {
  AllLaunchesPage({Key? key}) : super(key: key);
  var spacexViewModel = SpacexViewModel();
  var imageHeight = 250.0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpacexBloc(),
      child: Scaffold(body: SafeArea(child: BlocBuilder<SpacexBloc, SpacexState>(
        builder: (context, state) {
          if (state is SpacexInitialState) {
            spacexViewModel.fetchLaunchingInfo(context);
            return busyIndicator();
          } else {
            var allLaunches = spacexViewModel.launching;
            return RefreshIndicator(
              onRefresh: () async {
                spacexViewModel.refreshLaunches(context);
              },
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return ListView(
                    children: [
                      Padding(
                        padding: context.paddingMediumAll,
                        child: Column(
                          children: [
                            _title((index + 1).toString()),
                            _rocketName(allLaunches[index]),
                            _rocketImage(context, allLaunches[index]),
                            _detailInfo(allLaunches[index], context),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            );
          }
        },
      ))),
    );
  }

  Widget _title(String launchNumber) {
    return NationText(
      'SpaceX Launch Info $launchNumber',
      color: Colors.black,
      fontSize: 25,
    );
  }

  Widget _rocketName(SpacexModel launch) => NationText(((launch.name ?? '')));

  Widget _rocketImage(BuildContext context, SpacexModel launch) {
    return Padding(
      padding: context.paddingMediumAll,
      child: (launch.links != null && launch.links?.patch != null && launch.links?.patch?.large != null) == true
          ? Image.network(
              launch.links!.patch!.large!,
              height: imageHeight,
              errorBuilder: (BuildContext context, Object exception, stackTrace) => const Center(
                child: NationText(
                  'Image not found',
                ),
              ),
              loadingBuilder: (BuildContext context, Widget child, loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  height: imageHeight,
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            )
          : SvgPicture.asset(SVGImagePath.instance.imageNotFoundSVG),
    );
  }

  Widget _detailInfo(SpacexModel launch, BuildContext context) {
    //return (lastLaunch.details != null) == true ? NationText((lastLaunch.details ?? ''), fontSize: 18) : const NationText('Details info not found');
    return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black.withOpacity(0.2)), borderRadius: context.lowBorderRadius),
        child: (launch.details != null) == true
            ? Padding(
                padding: context.paddingLowAll,
                child: NationText((launch.details ?? ''), fontSize: 18),
              )
            : Padding(
                padding: context.paddingLowAll,
                child: const NationText('Details info not found'),
              ));
  }
}
