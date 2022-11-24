import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_preview_tech/app/core/base/base_view.dart';

import 'controllers/home_controller.dart';

class HomeScreen extends BaseView<HomeController> {
  final Function? onDrawerIconTap;

  const HomeScreen({super.key, this.onDrawerIconTap});

  @override
  Widget body(BuildContext context) {
    return Container(
    );
  }

}
