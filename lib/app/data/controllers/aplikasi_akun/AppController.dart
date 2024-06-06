// controllers/app_controller.dart
import 'package:arsifa/app/data/models/aplikasi_akun/AppModel.dart';
import 'package:arsifa/app/data/services/aplikasi_akun/AppService.dart';
import 'package:get/get.dart';


class AppController extends GetxController {
  var apps = <AppModel>[].obs;
  var isLoading = true.obs;

  final AppService service = AppService();

  @override
  void onInit() {
    fetchApps();
    super.onInit();
  }

  void fetchApps() async {
    try {
      isLoading(true);
      var fetchedApps = await service.fetchApps();
      if (fetchedApps.isNotEmpty) {
        apps.value = fetchedApps;
      }
    } finally {
      isLoading(false);
    }
  }
}
