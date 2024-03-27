import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/core/navigation/routes.dart';
import 'package:qr_code_app/qreader/presentation/controller/qreader_controller.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:sizer/sizer.dart';

class QreaderPage extends GetView<QreaderController> {
  const QreaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAllNamed(Routes.home);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Qreader'),
        ),
        body: const _Content(),
      ),
    );
  }
}

class _Content extends GetView<QreaderController> {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100.h,
          child: QRView(
            key: controller.scannerKey,
            overlay: QrScannerOverlayShape(
                borderColor: Colors.red,
                borderRadius: 0.0,
                borderLength: 50,
                borderWidth: 8,
                cutOutHeight: 75.w,
                cutOutWidth: 75.w),
            onQRViewCreated: (QRViewController qrController) async {
              await controller.onQRCreated(qrController, context);
            },
          ),
        ),
      ],
    );
  }
}
