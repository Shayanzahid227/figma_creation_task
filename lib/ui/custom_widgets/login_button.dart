import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;

  const CustomLoginButton(
      {super.key,
      required this.onPressed,
      this.text = "", //change it according to your use
      this.color = const Color(0xfffdd854)});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      height: 65.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
            //  rounded corners of container
          ),
          backgroundColor: color,
          iconColor: const Color(0xffFDD854), // Button color
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14.sp, // Set the font size
            fontWeight: FontWeight.w600,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }
}
