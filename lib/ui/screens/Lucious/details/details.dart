import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/screens/Lucious/cart_screem.dart/CartScreen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/chose_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class DetailScreen_0 extends StatefulWidget {
  const DetailScreen_0({super.key});

  @override
  State<DetailScreen_0> createState() => _DetailScreen_0State();
}

class _DetailScreen_0State extends State<DetailScreen_0> {
  // int currentIndex = 0;
  // List<Widget> body = [
  //   const Icon(Icons.home),
  //   const Icon(Icons.menu),
  //   const Icon(Icons.chat_rounded),
  //   const Icon(Icons.person)
  //];
  bool isSelected = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void onClick() {
    isSelected = !isSelected;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // bottomNavigationBar:
      //     BottomNavigationBar(backgroundColor: Colors.white, items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //   BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
      //   BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      // ]

      // ),
      body: Column(
        children: [
          Stack(
            //alignment: Alignment.topLeft,
            children: [
              // Image(
              //   image: AssetImage("$staticAssets/detials.png"),
              // )
              Container(
                height: screenHeight * 0.65,
                width: double.infinity.w,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("$staticAssets/details.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 460.5),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Color(0xfffffffff),
                  ),
                  height: screenHeight * 0.47,
                  width: screenWidth * double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 40),
                        child: Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Classic Manicure",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xfffe78377)),
                                )),
                            SizedBox(
                              width: screenWidth * 0.25,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Image(
                                  image: AssetImage("$iconsAssets/heart.png"),
                                  fit: BoxFit.contain,
                                  height: 22,
                                  width: 22,
                                ))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 33.0),
                        child: Text(
                          "45 min 56AED",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02.h,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Simple and Classic,\n the manicure including nails cleaning (cuticles\n cut and filled),shaping and nail polish \n you choice.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                // TextButton(onPressed: () {}, child: Text("kk"))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.09,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                onClick();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? const Color(0xfffe78377)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 60,
                                width: 174,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ChoseScreen_0(),
                                          ));
                                    },
                                    child: Text(
                                      "Book Now",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: isSelected
                                              ? Colors.white
                                              : const Color(0xfffe78377)),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.099,
                            ),
                            GestureDetector(
                              onTap: () {
                                onClick();
                              },
                              child: Container(
                                height: 60,
                                width: 130,
                                decoration: BoxDecoration(
                                    color: isSelected
                                        ? Colors.transparent
                                        : const Color(0xfffe78377),
                                    border: Border.all(
                                        color: const Color(0xfffe78377)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const CartScreen_0(),
                                              ));
                                        },
                                        child: const Text(
                                          "Add to carts",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xfffe78377)),
                                        ))),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
