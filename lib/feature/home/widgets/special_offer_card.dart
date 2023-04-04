import 'package:flutter/material.dart';
import 'package:quick_fix/feature/details/data.dart';
import 'package:quick_fix/feature/home/data.dart';
import 'package:quick_fix/shared/constants/spacing.dart';
import 'package:quick_fix/shared/widgets/app_button.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Sp.def3x),
      padding: const EdgeInsets.all(Sp.def3x),
      // height: 180,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(DetailsData.blurred),fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(32))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text(
                HomeData.offerPercent,
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Spacer(),
              AppButton.primary(
                'Explore Offer',
                onPressed: () => debugPrint('Explore Offer'),
              ),
            ],
          ),
          const Text(
            HomeData.offerTitle,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Text(
            HomeData.offerSubTitle,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
