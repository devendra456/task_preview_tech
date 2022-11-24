import 'package:get/get.dart';
import 'package:task_preview_tech/app/core/di.dart';
import 'package:task_preview_tech/domain/use_cases/get_otp_use_case.dart';

import '../../../../presentation/home/controllers/home_controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(getIt.get<GetGitReposUseCase>()),);
  }
}
