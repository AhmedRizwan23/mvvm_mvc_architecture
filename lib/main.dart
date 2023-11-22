import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/resources/getx_localization/languages.dart';
import 'package:mvvm_mvc_architecture/resources/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: languages(),
      locale: const Locale("en", "US"),
      fallbackLocale: const Locale("en", "US"),
      getPages: Approutes.approutes(),
    );
  }
}
