import 'package:get/get.dart';
import 'package:qr_code_app/qreader/domain/entities/packageinfo.dart';
import 'package:qr_code_app/qreader/domain/usecase/get_package_info.dart';

class DetailsController extends GetxController with StateMixin<PackageInfo> {
  GetPackageInfo getPackageInfoUseCase;
  DetailsController({required this.getPackageInfoUseCase});
  final _qrcodeshow = 'test'.obs;
  String get qrCode => _qrcodeshow.value;

  final packageInfo = const PackageInfo().obs;
  PackageInfo get package => packageInfo.value;

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    if (Get.arguments != null && Get.arguments is Map) {
      _qrcodeshow.value = Get.arguments['qrCode'];
    }
    await getPackageInfo();

    super.onInit();
  }

  Future<void> getPackageInfo() async {
    change(null, status: RxStatus.loading());
    try {
      final result = await getPackageInfoUseCase(qrCode);
      packageInfo.value = result;
      change(result, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
