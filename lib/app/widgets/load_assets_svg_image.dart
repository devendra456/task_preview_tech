import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_preview_tech/app/values/assets_manager.dart';

import 'load_assets_image.dart';

class LoadAssetsSvgImage extends GetView {
  final String path;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  final Color? color;

  const LoadAssetsSvgImage(
    this.path, {
    this.height,
    this.width,
    this.boxFit = BoxFit.contain,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      fit: boxFit,
      color: color,
      placeholderBuilder: (context) {
        return const FlutterLogo();
      },

    );
  }
}
