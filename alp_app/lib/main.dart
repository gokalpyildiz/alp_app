import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app_dependency_injection.dart';
import 'pages/spacex/bloc/spacex_bloc.dart';
import 'pages/spacex/view/spacex_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetItLocators();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) => SpacexBloc(),
          )
        ], child: const SpacexPage()));
  }
}
