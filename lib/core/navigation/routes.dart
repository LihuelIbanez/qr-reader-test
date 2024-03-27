import 'package:get/get.dart';
import 'package:qr_code_app/qreader/bindings/details_binding.dart';
import 'package:qr_code_app/qreader/bindings/home_binding.dart';
import 'package:qr_code_app/qreader/bindings/qreader_binding.dart';
import 'package:qr_code_app/qreader/presentation/pages/details_page.dart';
import 'package:qr_code_app/qreader/presentation/pages/home_page.dart';
import 'package:qr_code_app/qreader/presentation/pages/qreader_page.dart';

class Routes {
  static const home = '/';
  static const qreader = '/qreader';
  static const details = '/details';
}

class Pages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.qreader,
      page: () => const QreaderPage(),
      binding: QreaderBinding(),
    ),
    GetPage(
        name: Routes.details,
        page: () => const DetailsPage(),
        binding: DetailsBinding()),
  ];
}
