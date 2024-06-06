// services/app_service.dart
import 'package:arsifa/app/data/models/aplikasi_akun/AppModel.dart';
import 'package:arsifa/app/data/repositories/aplikasi_akun/AppRepository.dart';


class AppService {
  final AppRepository repository = AppRepository();

  Future<List<AppModel>> fetchApps() async {
    return await repository.getAllApps();
  }
}
