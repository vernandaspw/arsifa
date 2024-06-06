import 'package:arsifa/app/data/controllers/aplikasi_akun/AppController.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController.
  final AppController appController = Get.put(AppController());

  @override
  void onInit() {
    super.onInit();
    print('addaw');
    // fetchApps();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

Future<void> fetchApps() async {
  try {
      final response = await http.get(Uri.parse('http://localhost:4000/api/v1/apps'));
      print(response.body);
      if (response.statusCode == 200) {
        print('Response body: ${response.body}');
      } else {
        print('Failed to load apps: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching apps: $e');
    }
}
