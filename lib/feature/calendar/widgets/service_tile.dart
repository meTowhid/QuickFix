import 'package:flutter/material.dart';
import 'package:quick_fix/app/constants.dart';
import 'package:quick_fix/feature/details/data.dart';
import 'package:quick_fix/shared/constants/spacing.dart';

class ServiceTile extends StatelessWidget {
  const ServiceTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sp.def),
      child: Card(
        elevation: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sp.def),
                      image: const DecorationImage(
                        image: AssetImage(DetailsData.houseClean3),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: Sp.def),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'House Cleaning',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('Sept. 12, 22', style: TextStyle(fontSize: 15)),
                    Chip(
                      backgroundColor: AppColor.lightBlue,
                      label: const Text('Upcoming',
                          style: TextStyle(color: AppColor.blue)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Sp.def),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.blue,
                    borderRadius: BorderRadius.circular(Sp.def),
                  ),
                  padding: const EdgeInsets.all(Sp.def),
                  margin: const EdgeInsets.all(Sp.def2x),
                  child: const Icon(Icons.chat, color: Colors.white),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: Sp.def2x),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.all(Sp.def),
              child: Icon(Icons.arrow_drop_down_sharp, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
