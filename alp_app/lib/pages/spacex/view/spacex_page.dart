import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../extensions/context_extensions.dart';
import '../../../product/widgets/busy_indicator/busy_indicator.dart';
import '../../../product/widgets/constants/image_path_constants/svg_image_path.dart';
import '../../../product/widgets/nation_text/nation_text.dart';
import '../bloc/spacex_bloc.dart';
import '../bloc/spacex_state.dart';
import '../viewmodel/spacex_viewmodel.dart';

class SpacexPage extends StatefulWidget {
  const SpacexPage({Key? key}) : super(key: key);

  @override
  State<SpacexPage> createState() => _SpacexPageState();
}

class _SpacexPageState extends State<SpacexPage> {
  late SpacexViewModel spacexViewModel;
  @override
  void initState() {
    spacexViewModel = SpacexViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpacexBloc(),
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //     centerTitle: true,
        //     title: const NationText(
        //       'SpaceX Son Uçuş Bilgileri',
        //       color: Colors.black,
        //       fontSize: 25,
        //     ),
        //     backgroundColor: Colors.white,
        //     elevation: 0),
        body: SafeArea(
            child: BlocConsumer<SpacexBloc, SpacexState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is SpacexInitialState) {
              spacexViewModel.fetchLaunchingInfo(context);
              return busyIndicator();
            } else {
              var lastLaunch = spacexViewModel.lastLaunch;
              return RefreshIndicator(
                onRefresh: () async {
                  spacexViewModel.refreshLaunches(context);
                },
                child: ListView(
                  children: [
                    Padding(
                      padding: context.paddingMediumAll,
                      child: Column(
                        children: [
                          const NationText(
                            'SpaceX Last Launch Info',
                            color: Colors.black,
                            fontSize: 25,
                          ),
                          NationText(('Name: ' + (lastLaunch.name ?? ''))),
                          Padding(
                            padding: context.paddingMediumAll,
                            child: (lastLaunch.links != null && lastLaunch.links?.patch != null && lastLaunch.links?.patch?.large != null) == true
                                ? Image.network(
                                    lastLaunch.links!.patch!.large!,
                                    height: 250,
                                    errorBuilder: (BuildContext context, Object exception, stackTrace) => const Center(
                                      child: NationText(
                                        'Image not found',
                                      ),
                                    ),
                                    loadingBuilder: (BuildContext context, Widget child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress.expectedTotalBytes != null
                                              ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                              : null,
                                        ),
                                      );
                                    },
                                  )
                                : SvgPicture.asset(SVGImagePath.instance.imageNotFoundSVG),
                          ),
                          (lastLaunch.details != null) == true
                              ? NationText('Details: ' + (lastLaunch.details ?? ''), fontSize: 18)
                              : const NationText('Details info not found')
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        )),
      ),
    );
  }
}
