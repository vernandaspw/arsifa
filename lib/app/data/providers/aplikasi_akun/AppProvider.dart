// providers/app_provider.dart
import 'package:arsifa/app/data/models/aplikasi_akun/AppModel.dart';
import 'package:get/get.dart';

class AppProvider extends GetConnect {
  Future<List<AppModel>> fetchApps() async {
    final response = await get('http://localhost:4000/api/v1/apps');
    print(response.body);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      List<dynamic> data = response.body['data'];
      return data.map((json) => AppModel.fromJson(json)).toList();
    }
  }
}
