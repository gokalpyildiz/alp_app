import 'package:alp_app/pages/spacex/bloc/spacex_bloc.dart';
import 'package:alp_app/pages/spacex/bloc/spacex_state.dart';
import 'package:alp_app/product/widgets/busy_indicator/busy_indicator.dart';
import 'package:alp_app/product/widgets/nation_text/nation_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../viewmodel/spacex_viewmodel.dart';

class SpacexPage extends StatefulWidget {
  const SpacexPage({Key? key}) : super(key: key);

  @override
  State<SpacexPage> createState() => _SpacexPageState();
}

class _SpacexPageState extends State<SpacexPage> {
  var spacexViewModel = SpacexViewModel();
  @override
  void initState() {
    spacexViewModel.fetchLaunchingInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SpacexBloc(SpacexInitialState()),
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
            child: RefreshIndicator(onRefresh: () async {
          await Future.delayed(const Duration(seconds: 3));
        }, child: BlocBuilder<SpacexBloc, SpacexState>(
          builder: (context, state) {
            if (state is SpacexPageLoadComplete) {
              return busyIndicator();
            } else {
              return ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const NationText(
                          'SpaceX Son Uçuş Bilgileri',
                          color: Colors.black,
                          fontSize: 25,
                        ),
                        Stack(
                          children: const [
                            Text('data')
                            // Image.asset(
                            //   'assets/images/spacex.jpg',
                            //   fit: BoxFit.fill,
                            // )
                          ],
                        ),
                        const NationText('Name:'),
                        const NationText('Patch:'),
                        const NationText('Details')
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        )
                // child: CustomScrollView(
                //   slivers: [
                //     const SliverAppBar(
                //       title: Text('deneme'),
                //     ),
                //     SliverList(delegate: SliverChildListDelegate([Text('data')]))
                //   ],
                // ),
                )),
      ),
    );
  }
}
