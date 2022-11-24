import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadNetworkImage extends GetView {
  final String url;
  final double? height;
  final double? width;
  final BoxFit? boxFit;

  const LoadNetworkImage(
    this.url, {
    Key? key,
    this.height,
    this.width,
    this.boxFit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: boxFit,
      progressIndicatorBuilder: (context, url, progress) {
       return Center(
         child: CircularProgressIndicator(
            value:progress.progress,
          ),
       );
      },
      errorWidget: (context,_,dyn)=>const Center(
        child: Icon(Icons.error_outline_rounded),
      ),
    );
  }
}
