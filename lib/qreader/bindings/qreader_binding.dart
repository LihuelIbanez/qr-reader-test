import 'package:get/get.dart';
import 'package:qr_code_app/qreader/presentation/controller/qreader_controller.dart';

class QreaderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QreaderController>(() => QreaderController());
  }
}
