import 'package:flutter/material.dart';
import 'package:flutter_git/utils/colors.dart';
import 'routes/routes.dart';
import 'routes/routes_name.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Custom Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryColor,

        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      initialRoute: Routes.home,
      getPages: AppRoutes.routes,
    );
  }
}
