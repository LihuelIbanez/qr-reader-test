import 'package:get/get.dart';
import 'package:qr_code_app/qreader/data/datasource/qr_datasource.dart';
import 'package:qr_code_app/qreader/data/repository/qreader_repository_impl.dart';
import 'package:qr_code_app/qreader/domain/repository/qreader_repositoy.dart';

class InyectoryFactory {
  static QreaderRepository createQreaderRepository() {
    try {
      return Get.find<QreaderRepository>();
    } catch (_) {
      final dataSource = QreaderDataSourceImpl();
      final repository = QreaderRepositoryImpl(dataSource);
      Get.lazyPut<QreaderRepository>(() => repository);
      return repository;
    }
  }
}
