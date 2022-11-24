import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task_preview_tech/app/core/base/base_view.dart';
import 'package:task_preview_tech/app/core/di.dart';
import 'package:task_preview_tech/app/theme/color_manager.dart';
import 'package:task_preview_tech/app/values/assets_manager.dart';
import 'package:task_preview_tech/domain/use_cases/get_otp_use_case.dart';
import '../../app/widgets/load_assets_image.dart';
import '../../app/widgets/load_assets_svg_image.dart';
import 'controllers/login_controller.dart';

class LoginScreen extends BaseView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget body(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.08,
          ),
          LoadAssetsImage(AssetsManager.googleLogo, height: Get.height * 0.16),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Text(
              "Login",
              style: Get.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: ColorManager.blackColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Please enter mobile number and verify"
              "\nyour OTP/Confirm your fingerprint to continue",
              style: Get.textTheme.bodySmall?.copyWith(
                  color: ColorManager.grayColor, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: Get.height * 0.048,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Mobile Number",
              style: Get.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600, color: ColorManager.grayColor),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: ColorManager.grayColor)),
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            padding: const EdgeInsets.all(4),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    "+91",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: ColorManager.grayColor,
                    ),
                  ),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      hintText: "Enter Your Number",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: ColorManager.lightGrayColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: ElevatedButton(
              onPressed: () async {},
              child: Text(
                "Proceed",
                style: Get.textTheme.titleMedium
                    ?.copyWith(color: ColorManager.whiteColor),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12)),
            ),
          ),
          SizedBox(
            height: Get.height * 0.30,
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.fingerprint_rounded,
                size: Get.height * 0.12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
