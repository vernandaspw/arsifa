// repositories/app_repository.dart
import 'package:arsifa/app/data/models/aplikasi_akun/AppModel.dart';
import 'package:arsifa/app/data/providers/aplikasi_akun/AppProvider.dart';


class AppRepository {
  final AppProvider api = AppProvider();

  Future<List<AppModel>> getAllApps() async {
    return await api.fetchApps();
  }
}
