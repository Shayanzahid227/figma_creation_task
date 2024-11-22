import 'package:figma_creation_task/ui/screens/Lucious/specificScreen.dart/SpecificServices.dart';
import 'package:figma_creation_task/ui/screens/code_with_asiftaj/StackConcept.dart';

import 'package:figma_creation_task/ui/screens/Lucious/specificScreen.dart/SpecificMVVM.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => SpecificServicesviewmodel()),
      ],
      child: const ScreenUtilInit(
        designSize: Size(394, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
            debugShowCheckedModeBanner: false, home: Stackconcept()),
      ),
    );
  }
}
