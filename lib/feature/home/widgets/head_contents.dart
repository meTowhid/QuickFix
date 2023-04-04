import 'package:flutter/material.dart';
import 'package:quick_fix/app/constants.dart';
import 'package:quick_fix/feature/details/data.dart';
import 'package:quick_fix/feature/home/data.dart';
import 'package:quick_fix/shared/constants/spacing.dart';

class HeadContents extends StatelessWidget {
  const HeadContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: Sp.def5x, bottom: Sp.def2x),
      decoration: const BoxDecoration(
        color: AppColor.darkBlue,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(Sp.def3x)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(Sp.def2x),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(DetailsData.avatarFemale),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    HomeData.greetings,
                    style: TextStyle(color: AppColor.grey, fontSize: 20),
                  ),
                  Text(
                    HomeData.name,
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.notifications_outlined,
                color: AppColor.grey,
                size: 32,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: Sp.def2x),
                child: Icon(
                  Icons.bookmark_outline,
                  color: AppColor.grey,
                  size: 32,
                ),
              ),
            ],
          ),
          ListTile(
            title: const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: AppColor.grey, fontSize: 20),
                border: InputBorder.none,
              ),
              style: TextStyle(color: AppColor.grey, fontSize: 20),
            ),
            leading: const Icon(Icons.search, size: 32, color: Colors.white),
            trailing: IconButton(
              icon: const Icon(Icons.tune, size: 32, color: AppColor.blue),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
