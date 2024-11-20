// featured services category continer
//  CategoryContainer Widget to recall it and optimize our code
// ignore_for_file: must_be_immutable

import 'package:figma_creation_task/core/models/home_eature.dart';
import 'package:figma_creation_task/ui/screens/figma03/home%20screen/specificScreen.dart/SpecificSservices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedCategoryContainer extends StatelessWidget {
  FeatureServices object_featureServices = FeatureServices();
  // final String title;
  // final String imagePath;
  // final String belowtitle;

  FeaturedCategoryContainer({super.key, required this.object_featureServices}
      //{
      //   super.key,
      // required this.title,
      // required this.imagePath,
      // required this.belowtitle}
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          height: 130,
          width: 276,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xfffffffff),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 10.w),
              Row(
                children: [
                  Image.asset(
                    "${object_featureServices.imgUrl}",
                    scale: 3.5,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "${object_featureServices.tittle}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfffe78377)),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    "  ${object_featureServices.timePrice}",
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfff888888)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
