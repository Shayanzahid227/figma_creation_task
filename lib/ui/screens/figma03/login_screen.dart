import 'dart:ffi';

import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/custom_widgets/text_feild.dart';
import 'package:figma_creation_task/ui/screens/figma03/register_screen.dart';
import 'package:flutter/material.dart';

class login_screen_0 extends StatelessWidget {
  const login_screen_0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.signal_cellular_alt),
          Icon(Icons.wifi),
          Icon(Icons.battery_4_bar_rounded),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Center(
                child: SizedBox(
                    height: 200,
                    width: 180,
                    child: Image.asset(
                      "$staticAssets/loginlogo.png",
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            const SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 22.0),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(hintText: "Email"),
                const SizedBox(height: 30),
                CustomTextField(hintText: "Password"),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                            color: Color(0xfffE78377),
                            borderRadius: BorderRadius.circular(9)),
                        child: TextButton(
                            onPressed: () {},
                            child: const Center(
                                child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ))),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "New user ?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Register_screen_0(),
                            ));
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Color(0xfffef8377)),
                          ))
                    ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
