import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../app/theme/color_manager.dart';

class OTPVerifyScreen extends StatelessWidget {
  final void Function() onSubmitTap;
  const OTPVerifyScreen({Key? key, required this.onSubmitTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
            ),
            Text(
              "Verify your mobile number",
              style: Get.textTheme.headlineSmall?.copyWith(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text("Enter your four digit OTP"),
            ),
            const SizedBox(height: 8),
            PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (otp) {},
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldHeight: 48,
                  fieldWidth: 48,
                  activeFillColor: Colors.white,
                  activeColor: ColorManager.accentColor1,
                  disabledColor: ColorManager.accentColor1,
                  errorBorderColor: ColorManager.accentColor1,
                  inactiveColor: ColorManager.accentColor1,
                  inactiveFillColor: ColorManager.accentColor1,
                  selectedColor: ColorManager.accentColor1,
                  selectedFillColor: ColorManager.accentColor1),
            ),
            const SizedBox(
              height: 32,
            ),
            TextButton(
              onPressed: (){},
              child: Text(
                "Resend OTP",
                style: Get.textTheme.titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: onSubmitTap,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(Get.width*0.5, 44)
              ),
              child: const Text("Submit"),
            ),
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
}
