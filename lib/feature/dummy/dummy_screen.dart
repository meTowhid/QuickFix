import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quick_fix/app/constants.dart';
import 'package:quick_fix/shared/constants/spacing.dart';

class DummyScreen extends StatelessWidget {
  DummyScreen(this.title, {super.key});

  final String title;
  final rnd = Random();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
            top: Sp.def5x * 2,
            bottom: Sp.def5x,
            left: Sp.def2x,
            right: Sp.def2x,
          ),
          decoration: const BoxDecoration(
            color: AppColor.darkBlue,
            borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(Sp.def3x)),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // list of random width shaped containers
        Expanded(
          child: ListView.builder(
            itemCount: 20,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Container(
              alignment: Alignment.centerLeft,
              child: Container(
                height: rnd.nextInt(30) + 20,
                width: rnd.nextDouble() * (width * .8) + (width * .2),
                decoration: BoxDecoration(
                  color: AppColor.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(Sp.def2x),
                ),
                margin: const EdgeInsets.symmetric(
                  vertical: Sp.def,
                  horizontal: Sp.def3x,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
