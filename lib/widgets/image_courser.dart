import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCourser extends StatelessWidget {
  final String imageSrc;
  const ImageCourser({super.key,required this.imageSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.only(right: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(imageSrc), fit: BoxFit.cover)
      ),

    );
  }
}