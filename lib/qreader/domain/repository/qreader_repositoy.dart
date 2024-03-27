import 'package:qr_code_app/qreader/domain/entities/packageinfo.dart';

abstract class QreaderRepository {
  Future<PackageInfo> getPackageInfo(String qrCode);
}
