import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/home_view_model.dart';
import 'package:figma_creation_task/ui/screens/root/root_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen_0 extends StatefulWidget {
  const ProfileScreen_0({super.key});

  @override
  State<ProfileScreen_0> createState() => _ProfileScreen_0State();
}

class _ProfileScreen_0State extends State<ProfileScreen_0> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<RootViewModel>(
          builder: (context, model, child) => const Scaffold(
                body: Column(
                  children: [Text("Profile"), Text("kkk")],
                ),
              )),
    );
  }
}
