import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/core/strings/strings.dart';
import 'package:qr_code_app/qreader/presentation/controller/home_controller.dart';
import 'package:sizer/sizer.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('QR reader'),
        ),
        body: const _Content());
  }
}

class _Content extends GetView<HomeController> {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.h,
            width: 30.w,
            child: FloatingActionButton(
                backgroundColor: Colors.blueAccent,
                onPressed: () => controller.goToQreader(),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(Strings.qrReader),
                )),
          ),
        ],
      ),
    );
  }
}
