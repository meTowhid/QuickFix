import 'package:flutter/material.dart';
import 'package:quick_fix/app/constants.dart';
import 'package:quick_fix/shared/constants/spacing.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(this.text, {super.key, this.onPressed});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sp.def2x),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle:
                  const TextStyle(fontSize: 16, color: AppColor.lightBlue),
            ),
            onPressed: onPressed,
            child: const Text('See all'),
          ),
        ],
      ),
    );
  }
}
