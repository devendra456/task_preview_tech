import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:task_preview_tech/app/core/base/base_controller.dart';
import 'package:task_preview_tech/domain/use_cases/get_otp_use_case.dart';

import '../../../data/error/failure.dart';
import '../../../domain/models/data_model.dart';

class HomeController extends BaseController {
  final GetGitReposUseCase gitReposUseCase;

  HomeController(this.gitReposUseCase);

  int pageSize = 15;
  final PagingController<int, DataModel> pagingController =
      PagingController(firstPageKey: 1);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    pagingController.addPageRequestListener((pageNumber) {
      loadData(pageNumber);
    });
    loadData(1);
    super.onReady();
  }

  void loadData(int pageNumber) async {
    final future = gitReposUseCase(GetReposParams(pageNumber: pageNumber));
    final res = await future;
    res.fold(
      _handelErrorResponse,
      (r) {
        _handelSuccessResponse(r, pageNumber);
      },
    );
  }

  _handelErrorResponse(Failure failure) {
    pagingController.error = failure.message;
    showErrorMessage(failure.message);
  }

  _handelSuccessResponse(List<DataModel> list, int pageNumber) {
    final isLastPage = list.length < pageSize;
    if (isLastPage) {
      pagingController.appendLastPage(list);
    } else {
      final nextPageKey = pageNumber + 1;
      pagingController.appendPage(list, nextPageKey);
    }
  }

  @override
  void onClose() {
    pagingController.dispose();
    super.onClose();
  }

}
