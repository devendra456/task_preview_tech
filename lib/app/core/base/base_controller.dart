import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:logger_plus/logger_plus.dart';
import 'package:task_preview_tech/data/error/failure.dart';

import '../../widgets/loader_widget.dart';
import '../config.dart';
import '../di.dart';

abstract class BaseController extends GetxController {
  final Logger logger = ConfigEnvironments.logger;

  Future<void> showLoading() async {
    await Get.dialog(const LoaderWidget(), barrierDismissible: false);
  }

  Future<void> hideLoading() async {
    Get.back();
  }

  Future<void> showErrorMessage(String message) async {
    await Fluttertoast.showToast(msg: message);
  }

  Future<void> showSuccessMessage(String message) async {
    await Fluttertoast.showToast(msg: message);
  }

}
