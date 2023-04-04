import 'package:flutter/material.dart';
import 'package:quick_fix/app/constants.dart';
import 'package:quick_fix/shared/constants/spacing.dart';

class MostPopularChip extends StatelessWidget {
  const MostPopularChip(this.text, {super.key, this.isSelected = true});

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final bg = isSelected ? AppColor.blue : Colors.white;
    final border = isSelected ? AppColor.blue : Colors.grey;
    final textColor = isSelected ? AppColor.lightBlue : Colors.grey;
    return Chip(
      backgroundColor: bg,
      label: Text(text, style: TextStyle(color: textColor)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sp.def),
        side: BorderSide(color: border, width: 2),
      ),
    );
  }
}
