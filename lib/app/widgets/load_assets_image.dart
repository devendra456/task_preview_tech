import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../values/assets_manager.dart';

class LoadAssetsImage extends GetView {
  final String path;
  final double? height;
  final double? width;
  final BoxFit? boxFit;

  const LoadAssetsImage(
    this.path, {
    this.height,
    this.width,
    this.boxFit,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: height,
      width: width,
      fit: boxFit,
      errorBuilder: (context, _, stackTrace) {
        return const FlutterLogo();
      },
    );
  }
}
