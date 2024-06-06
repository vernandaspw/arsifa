import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/core/bindings/application_bindings.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ASIFA - Aplikasi Siti Fatimah',
      initialBinding: ApplicationBindings(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
