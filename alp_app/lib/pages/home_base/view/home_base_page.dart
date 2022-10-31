import 'package:alp_app/pages/home_base/bloc/home_base_bloc.dart';
import 'package:alp_app/pages/home_base/bloc/home_base_event.dart';
import 'package:alp_app/pages/spacex/view/all_launches_page.dart';
import 'package:alp_app/pages/spacex/view/spacex_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class HomeBasePage extends StatelessWidget {
  HomeBasePage({Key? key, required this.pageIndex}) : super(key: key);
  final _pageNavigation = [const SpacexPage(), AllLaunchesPage()];
  int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBaseBloc(),
      child: BlocBuilder<HomeBaseBloc, int>(
        builder: (context, state) {
          return Scaffold(
            body: _pageNavigation[state],
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: const Color(0xFF9EABB6),
                selectedItemColor: const Color(0xFF198EF6),
                onTap: (index) {
                  context.read<HomeBaseBloc>().add(PageIndexChanged(index));
                },
                currentIndex: state,
                selectedFontSize: 15,
                unselectedFontSize: 15,
                backgroundColor: Colors.white,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.rocket),
                    label: 'Last Launch',
                  ),
                  BottomNavigationBarItem(icon: Icon(Icons.rocket_launch_rounded), label: 'All Launches')
                ]),
          );
        },
      ),
    );
  }
}
