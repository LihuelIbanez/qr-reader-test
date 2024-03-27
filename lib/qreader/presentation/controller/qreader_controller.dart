import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/core/navigation/routes.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QreaderController extends GetxController {
  final GlobalKey scannerKey = GlobalKey(debugLabel: 'barcodeScanner');

  late QRViewController qrController;

  Future<void> onQRCreated(
      QRViewController controller, BuildContext context) async {
    qrController = controller;
    controller.resumeCamera();

    controller.scannedDataStream.listen((scanData) async {
      final barcodeResult = formatScannedBarcode(scanData);
      await controller.pauseCamera();
      Get.toNamed(Routes.details, arguments: {'qrCode': barcodeResult});
    });
  }

  String formatScannedBarcode(Barcode scanData) => scanData.code!.toUpperCase();
}
