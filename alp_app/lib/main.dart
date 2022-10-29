import 'package:flutter/material.dart';

import 'app/app_dependency_injection.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpacexPage(),
    );
  }
}
