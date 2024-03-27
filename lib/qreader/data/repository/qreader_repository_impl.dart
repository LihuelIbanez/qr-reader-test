import 'package:qr_code_app/qreader/data/datasource/qr_datasource.dart';
import 'package:qr_code_app/qreader/domain/entities/packageinfo.dart';
import 'package:qr_code_app/qreader/domain/repository/qreader_repositoy.dart';

class QreaderRepositoryImpl implements QreaderRepository {
  final QreaderDataSource dataSource;

  QreaderRepositoryImpl(this.dataSource);

  @override
  Future<PackageInfo> getPackageInfo(String qrCode) async {
    return await dataSource.getPackageInfo();
  }
}
