import 'package:get/get.dart';
import 'package:task_preview_tech/app/core/di.dart';

import '../../../../domain/use_cases/get_otp_use_case.dart';
import '../../../../presentation/login/controllers/login_controller.dart';

class LoginControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
