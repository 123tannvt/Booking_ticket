import 'package:book_tiket/src/di/injection/injection.dart';
import 'package:book_tiket/src/network/base_dio.dart';

class ApiModules extends DIModule {
  @override
  Future<void> provider() async {
    final dio = await BaseDio.setup();
    getIt.registerLazySingleton(() => dio);
    // TODO: implement provider
  }
}
