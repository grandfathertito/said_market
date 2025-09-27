import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:said/core/colors_app.dart';
import 'package:said/core/text_app_style.dart';

class CustomeCard extends StatelessWidget {
  final String titleProduct;
  final String imageSrc;
  final double price;
  const CustomeCard({super.key, required this.titleProduct, required this.price, required this.imageSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                      color: ColorsApp().secoundColor,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    height: 100.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(titleProduct, style: TextAppStyle().titleCard,),
                              Text(price.toString() + r' $', style: TextAppStyle().subTitleCard,),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(8.r),
                          child: Image.asset(imageSrc, fit: BoxFit.cover, width: 90.w, height: 100.h,)),
                      ],
                    ),
                  );
  }
}