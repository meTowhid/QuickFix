import 'package:flutter/material.dart';
import 'package:quick_fix/feature/home/data.dart';
import 'package:quick_fix/feature/home/widgets/category_item_tile.dart';
import 'package:quick_fix/feature/home/widgets/head_contents.dart';
import 'package:quick_fix/feature/home/widgets/most_popular_chip.dart';
import 'package:quick_fix/feature/home/widgets/section_header.dart';
import 'package:quick_fix/feature/home/widgets/special_offer_card.dart';
import 'package:quick_fix/shared/constants/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const HeadContents(),
        const SectionHeader( 'Special Offers'),
        const SpecialOfferCard(),
        const SectionHeader( 'Categories'),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: Sp.def2x),
            physics: const BouncingScrollPhysics(),
            itemCount: HomeData.categories.length * 2,
            itemBuilder: (context, index) => CategoryItemTile(
                HomeData.categories[index % HomeData.categories.length]),
          ),
        ),
        const SectionHeader( 'Most Popular'),
        SizedBox(
          height: 50,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: Sp.def2x),
            physics: const BouncingScrollPhysics(),
            itemCount: HomeData.popularTags.length * 2,
            separatorBuilder: (context, index) => const SizedBox(width: Sp.def),
            itemBuilder: (context, index) => MostPopularChip(
              HomeData.popularTags[index % HomeData.popularTags.length],
              isSelected: index == 0,
            ),
          ),
        ),
      ],
    );
  }
}
