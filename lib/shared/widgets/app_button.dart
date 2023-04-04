import 'package:flutter/material.dart';
import 'package:quick_fix/app/constants.dart';
import 'package:quick_fix/shared/constants/spacing.dart';

class AppButton extends StatelessWidget {
  const AppButton(
    this.text, {
    this.onPressed,
    this.isPrimary = true,
    super.key,
  });

  const AppButton.primary(this.text, {this.onPressed, super.key})
      : isPrimary = true;

  const AppButton.secondary(this.text, {this.onPressed, super.key})
      : isPrimary = false;

  final String text;
  final bool isPrimary;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: const Size(50, 50),
        foregroundColor: isPrimary ? Colors.white : AppColor.blue,
        backgroundColor: isPrimary ? AppColor.blue : AppColor.lightBlue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(Sp.def)),
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
