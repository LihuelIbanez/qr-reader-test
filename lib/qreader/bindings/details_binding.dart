import 'package:get/get.dart';
import 'package:qr_code_app/core/binding/inyector_factory.dart';
import 'package:qr_code_app/qreader/domain/usecase/get_package_info.dart';
import 'package:qr_code_app/qreader/presentation/controller/details_controller.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    final repository = InyectoryFactory.createQreaderRepository();
    final GetPackageInfo getPackageInfo = GetPackageInfo(repository);

    Get.lazyPut<DetailsController>(() => DetailsController(
          getPackageInfoUseCase: getPackageInfo,
        ));
  }
}
