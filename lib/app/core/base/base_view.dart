import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base_controller.dart';

abstract class BaseView<Controller extends BaseController> extends GetView<Controller> {
  const BaseView({super.key});

  Widget body(BuildContext context);

  Widget? bottomNavigationBar(BuildContext context){
    return null;
  }

  Widget? drawer(BuildContext context){
    return null;
  }

  PreferredSizeWidget? appBar(BuildContext context){
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar(context),
      bottomNavigationBar: bottomNavigationBar(context),
      drawer: drawer(context),
      body: body(context),
    );
  }
}

