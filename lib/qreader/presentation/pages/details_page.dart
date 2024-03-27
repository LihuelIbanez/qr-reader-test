import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/core/navigation/routes.dart';
import 'package:qr_code_app/qreader/presentation/controller/details_controller.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAllNamed(Routes.qreader);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(),
        body: const _Content(),
      ),
    );
  }
}

class _Content extends GetView<DetailsController> {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Actual String is: ${controller.qrCode}'),
              Text(controller.package.id ?? ''),
              Text(controller.package.name ?? ''),
              Text(controller.package.lastname ?? ''),
              Text(controller.package.packageState ?? ''),
            ]),
      ),
    );
  }
}
