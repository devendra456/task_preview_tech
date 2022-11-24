import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:task_preview_tech/app/core/base/base_controller.dart';
import 'package:task_preview_tech/domain/use_cases/get_otp_use_case.dart';

import '../../../data/error/failure.dart';
import '../../../domain/models/data_model.dart';

class HomeController extends BaseController {
  final GetGitReposUseCase gitReposUseCase;

  HomeController(this.gitReposUseCase);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    print("jdsklfnfkj");
    loadData();
    super.onReady();
  }

  void loadData() async {
    final future = gitReposUseCase(const GetReposParams(pageNumber: 1));
    final res = await apiCallWithLoader<List<DataModel>>(future);
    res.fold((l) => debugPrint(l.message), (r) => debugPrint(r.toString()));
  }
}
