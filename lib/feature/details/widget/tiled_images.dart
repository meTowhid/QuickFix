import 'package:flutter/material.dart';
import 'package:quick_fix/feature/details/data.dart';
import 'package:quick_fix/shared/constants/spacing.dart';

class TiledImages extends StatelessWidget {
  const TiledImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Row(
        children: [
          _tile(context, DetailsData.houseClean3),
          const SizedBox(width: Sp.def),
          Expanded(
            child: Column(
              children: [
                _tile(context, DetailsData.houseClean2),
                const SizedBox(height: Sp.def),
                _tile(context, DetailsData.houseClean1),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _tile(BuildContext context, String img) => Expanded(
        child: GestureDetector(
          onTap: () => showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Sp.def2x),
                ),
                child: Image.asset(img, fit: BoxFit.cover),
              );
            },
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sp.def2x),
              color: Colors.deepPurple,
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),
        ),
      );
}
