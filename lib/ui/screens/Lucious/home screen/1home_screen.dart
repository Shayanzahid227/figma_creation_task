import 'package:figma_creation_task/core/constant/colors.dart';
import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/constant/text_style.dart';

import 'package:figma_creation_task/ui/custom_widgets/2featurservices.dart';

import 'package:figma_creation_task/ui/custom_widgets/OurServices.dart';
import 'package:figma_creation_task/ui/custom_widgets/UpComingBooking.dart';

import 'package:figma_creation_task/ui/screens/Lucious/all_services/all_servicess.dart';
import 'package:figma_creation_task/ui/screens/Lucious/bookings/1bookings.dart';

import 'package:figma_creation_task/ui/screens/Lucious/cart_screem.dart/CartScreen.dart';

import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/home_view_model.dart';
import 'package:figma_creation_task/ui/screens/Lucious/specificScreen.dart/SpecificServices.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Home_Screen_0 extends StatefulWidget {
  const Home_Screen_0({super.key});

  @override
  State<Home_Screen_0> createState() => _Home_Screen_0State();
}

class _Home_Screen_0State extends State<Home_Screen_0> {
  bool isSelect = false;
  //final index = 0;

  @override
  void initState() {
    super.initState();
  }

  onClick() {
    isSelect = !isSelect;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: const Color(0xffff9f8f6),

        ///
        /// Start Body
        ///
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),

                ///
                /// Header
                ///

                _header(context),

                const SizedBox(height: 20),

                ///
                /// Exclusive Offers
                ///

                const Text(
                  "Exclusive Offers",
                  style: style16,
                ),

                const SizedBox(height: 10),

                ///
                /// Banner Offer
                ///

                _banner(),

                SizedBox(
                  height: 22.h,
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     InkWell(
                //       onTap: () {
                //         onClick();
                //       },
                //       child: Container(
                //         padding: const EdgeInsets.all(20),
                //         decoration: BoxDecoration(
                //             color: isSelect ? Colors.red : Colors.green,
                //             borderRadius: BorderRadius.circular(20)),
                //         child: const Text("Yes"),
                //       ),
                //     ),
                //     GestureDetector(
                //       onTap: () {
                //         onClick();
                //       },
                //       child: Container(
                //         padding: const EdgeInsets.all(20),
                //         decoration: BoxDecoration(
                //             color: isSelect ? Colors.green : Colors.red,
                //             borderRadius: BorderRadius.circular(20)),
                //         child: const Text("No"),
                //       ),
                //     ),
                //   ],
                // ),

                ///
                /// Our services
                ///

                Text(
                  "Our services",
                  style: style16.copyWith(color: blackColor),
                ),

                SizedBox(
                  height: 10.h,
                ),

                ///
                /// Our services List Data
                ///

                SizedBox(
                    height: 160,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: model.listOurServices.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => All_Servicess_0()));
                          },
                          child: OurServicessContainer(
                              Object_ourservices: model.listOurServices[index]),
                        );
                      },
                    )),
                const SizedBox(
                  height: 10,
                ),
                //     children: const [
                //       ourservicessContainer(
                //         title: "Nails",
                //         imagePath: "$staticAssets/nails1.png",
                //       ),
                //       ourservicessContainer(
                //         title: "Hair",
                //         imagePath: "$staticAssets/hairs2.png",
                //       ),
                //       ourservicessContainer(
                //         title: "Facial",
                //         imagePath: "$staticAssets/facial3.png",
                //       ),
                //       ourservicessContainer(
                //         title: "Massage",
                //         imagePath: "$staticAssets/stone4.png",
                //       ),
                //       ourservicessContainer(
                //         title: "Waxing",
                //         imagePath: "$staticAssets/leg5.png",
                //       ),
                //       ourservicessContainer(
                //         title: "Threading",
                //         imagePath: "$staticAssets/flower6.png",
                //       ),
                //       ourservicessContainer(
                //         title: "UltraLucious\n7D hifu",
                //         imagePath: "$staticAssets/face7.png",
                //       ),
                //       ourservicessContainer(
                //         title: "Lucious \nslim RF\nCavitation",
                //         imagePath: "$staticAssets/dry8.png",
                //       ),
                //     ],
                //   ),
                // ),

                ///
                /// fatured Services
                ///

                const Text(
                  "fatured Services",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                ///
                /// fatured Services List Data
                ///
                SizedBox(
                  height: 103,
                  child: ListView.builder(
                    shrinkWrap: true,

                    itemCount: model.listfeatur_2.length,
                    scrollDirection: Axis.horizontal,

                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SpecificServicesScreen_0()));
                            },
                            child: FeatureServiceCustomWidget_2(
                                object_feturservices_2:
                                    model.listfeatur_2[index])),
                      );
                    },
                    // ask sir
                    // children: const [
                    //   //
                    //   // *****************  ask from sir    *****************
                    //   //
                    //   //
                    //   FeaturedCategoryContainer(featureServices: featureServices)
                    //   FeaturedCategoryContainer(
                    //     title: "Classic Pedicure",
                    //     imagePath: "$staticAssets/featured.png",
                    //     belowtitle: "45 mnt 59AED",
                    //   ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                ///
                /// Upcoming Bookings
                ///
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Upcoming Bookings",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                ///
                /// Upcoming Bookings list data
                ///

                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: model.listupcoming.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BookingScreen_ok()));
                          },
                          child: UpComingBookingCustomContainer(
                              object_upcomingservices:
                                  model.listupcoming[index]),
                        ),
                      );
                    },

                    // children: const [
                    //   UpcomingBookingContainer(
                    //       title: "Classic Manicure",
                    //       imagePath: "$staticAssets/upcoming.png",
                    //       meddletitle: "Home",
                    //       belowtitle: "Sat 22 August 2024"),
                    //   UpcomingBookingContainer(
                    //       title: "Classic Manicure",
                    //       imagePath: "$staticAssets/upcoming.png",
                    //       meddletitle: "Home",
                    //       belowtitle: "Sat 22 August 2024"),
                    //   UpcomingBookingContainer(
                    //       title: "Classic Manicure",
                    //       imagePath: "$staticAssets/upcoming.png",
                    //       meddletitle: "Home",
                    //       belowtitle: "Sat 22 August 2024"),
                    //   UpcomingBookingContainer(
                    //       title: "Classic Manicure",
                    //       imagePath: "$staticAssets/upcoming.png",
                    //       meddletitle: "Home",
                    //       belowtitle: "Sat 22 August 2024"),
                    // ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: s,
      ),
    );
  }
}

// // featured services category continer
// //  CategoryContainer Widget to recall it and optimize our code
// class FeaturedCategoryContainer extends StatelessWidget {
// ////// model of feature services called
//   FeatureServices featureServices = FeatureServices();
//   // final String title;
//   // final String imagePath;
//   // final String belowtitle;

//   FeaturedCategoryContainer({required this.featureServices
//       //   super.key,
//       // required this.title,
//       // required this.imagePath,
//       // required this.belowtitle
//       });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           margin: const EdgeInsets.all(8),
//           height: 130,
//           width: 276,
//           padding: const EdgeInsets.all(8.0),
//           decoration: BoxDecoration(
//             color: const Color(0xfffffffff),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Row(
//                 children: [
//                   Image.asset(
//                     "${featureServices.imgUrl}",
//                     scale: 3.5,
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Text(
//                     "${featureServices.tittle}",
//                     style: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color(0xfffe78377)),
//                   ),
//                   const SizedBox(height: 13),
//                   Text(
//                     "${featureServices.timePrice}",
//                     style: const TextStyle(
//                         fontSize: 13,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xfff888888)),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

_header(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good morning",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
          Text(
            "Rayna Carder ",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ],
      ),
      // **********************   why it is not working      ************************
      // GestureDetector(
      //   onTap: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => CartScreen_0()));
      //   },
      //  child: Badge(),
      // )

      CircleAvatar(
          backgroundColor: Colors.grey,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen_0()));
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ))),
    ],
  );
}

_banner() {
  return Container(
    padding: const EdgeInsets.only(left: 20.0, top: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: const Color(0xfffd7b99f),
        borderRadius: BorderRadius.circular(14)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upto 50%,',
              style: TextStyle(
                  color: Color(0xfffe78477),
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            const Text(
              "Look more beautiful and \n save more discount",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xfffe78477),
                  ),
                  child: const Center(
                    child: Text(
                      "Get offer now!",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ))
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            "$staticAssets/offers.png",
            scale: 4,
          ),
        ),
      ],
    ),
  );
}
