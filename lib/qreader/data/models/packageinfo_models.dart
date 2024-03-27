import 'package:qr_code_app/qreader/domain/entities/packageinfo.dart';

class PackageInfoModel extends PackageInfo {
  const PackageInfoModel({
    required String id,
    required String name,
    required String lastname,
    required String packageState,
  }) : super(
          id: id,
          name: name,
          lastname: lastname,
          packageState: packageState,
        );

  factory PackageInfoModel.fromJson(Map<String, dynamic> json) {
    return PackageInfoModel(
      id: json['id'],
      name: json['name'],
      lastname: json['lastname'],
      packageState: json['packageState'],
    );
  }
}
