import 'package:qr_code_app/qreader/data/models/packageinfo_models.dart';

abstract class QreaderDataSource {
  Future<PackageInfoModel> getPackageInfo();
}

class QreaderDataSourceImpl implements QreaderDataSource {
  @override
  Future<PackageInfoModel> getPackageInfo() async {
    final Map<String, dynamic> result = {
      'result': {
        'id': '1',
        'name': 'John',
        'lastname': 'Doe',
        'packageState': 'Delivered',
      },
    };
    return PackageInfoModel.fromJson(result['result']);
  }
}
