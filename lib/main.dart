import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/binding.dart';
import 'config/colors.dart';
import 'routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: primaryTextColor),
        scaffoldBackgroundColor: backgroudColor,
      ),
      getPages: Approutes.routes(),
    );
  }
}
