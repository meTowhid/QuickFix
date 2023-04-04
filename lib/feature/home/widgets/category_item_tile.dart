import 'package:flutter/material.dart';
import 'package:quick_fix/app/constants.dart';
import 'package:quick_fix/feature/home/model/category_data.dart';
import 'package:quick_fix/shared/constants/spacing.dart';

class CategoryItemTile extends StatelessWidget {
  const CategoryItemTile(this.data, {super.key});

  final CategoryData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sp.def),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          color: data.color,
          borderRadius: BorderRadius.circular(Sp.def2x),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(data.icon, size: 40, color: AppColor.grey),
            Text(data.name, style: const TextStyle(fontSize: 15))
          ],
        ),
      ),
    );
  }
}
