import 'package:flutter/material.dart';
import 'package:quick_fix/app/constants.dart';
import 'package:quick_fix/feature/details/data.dart';
import 'package:quick_fix/shared/constants/spacing.dart';
import 'package:quick_fix/shared/widgets/app_button.dart';

import 'widget/tiled_images.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const Padding(
          padding: EdgeInsets.all(Sp.def3x),
          child: TiledImages(),
        ),
        Padding(
          padding: const EdgeInsets.all(Sp.def2x),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'House Cleaning',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppColor.darkBlue, fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.bookmark_add_outlined,
                color: AppColor.blue,
                size: 30,
              ),
            ],
          ),
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage(DetailsData.avatarFemale),
            radius: 30,
          ),
          title: Text(
            'Owned by basic Cooper',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xfff2b359),
                ),
                child: const Icon(
                  color: AppColor.darkBlue,
                  Icons.star_sharp,
                  size: 15,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  '4.8 / ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              const Text('(128 reviewers)', style: TextStyle(fontSize: 15))
            ],
          ),
        ),
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: AppColor.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(Sp.def)),
            child: const Icon(Icons.location_on, color: AppColor.grey),
          ),
          title: const Text(
            'Metrotech Center, Brooklyn\nNY11201, USA',
            style: TextStyle(fontSize: 15),
          ),
        ),
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: AppColor.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(Sp.def)),
            child: const Icon(Icons.discount_outlined, color: AppColor.grey),
          ),
          title: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  '\$20',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 5),
                child: Text(
                  '/ floor price',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.all(Sp.def2x), child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Sp.def2x, vertical: Sp.def2x),
          child: Text(
            'About Service',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColor.darkBlue, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: Sp.def2x),
          child: Text(
            'We use a Detail-Clean Rotation System Wherein We Complete all basic Cleaning and focus on deep cleaning certain areas of your space each  time we',
            style: TextStyle(fontSize: 15),
          ),
        ),
        const SizedBox(height: Sp.def3x),
        Row(
          children: [
            const SizedBox(width: Sp.def2x),
            Expanded(
              child: AppButton.secondary(
                'Message',
                onPressed: () {},
              ),
            ),
            const SizedBox(width: Sp.def2x),
            Expanded(
              child: AppButton.primary(
                'Book Now',
                onPressed: () {},
              ),
            ),
            const SizedBox(width: Sp.def2x),
          ],
        ),
        const SizedBox(height: Sp.def5x),
      ],
    );
  }
}
