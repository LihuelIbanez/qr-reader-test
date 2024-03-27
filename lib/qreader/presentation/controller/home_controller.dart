import 'package:get/get.dart';
import 'package:qr_code_app/core/navigation/routes.dart';

class HomeController extends GetxController {
  void goToQreader() {
    Get.toNamed(Routes.qreader);
  }
}
