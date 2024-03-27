import 'package:qr_code_app/qreader/domain/entities/packageinfo.dart';
import 'package:qr_code_app/qreader/domain/repository/qreader_repositoy.dart';

class GetPackageInfo {
  final QreaderRepository _packageRepository;

  GetPackageInfo(this._packageRepository);

  Future<PackageInfo> call(String qrCode) {
    return _packageRepository.getPackageInfo(qrCode);
  }
}
