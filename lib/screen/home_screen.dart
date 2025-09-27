import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:said/core/colors_app.dart';
import 'package:said/core/text_app_style.dart';
import 'package:said/widgets/custome_card.dart';
import 'package:said/widgets/image_courser.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
                ColorsApp().mainColor,
                ColorsApp().secoundColor
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Said Market', style: TextAppStyle().titleAppStyle,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Container(
                    height: 250.h,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        ImageCourser(imageSrc: 'assets/images/1.jpg'),
                        ImageCourser(imageSrc: 'assets/images/2.jpeg'),
                        ImageCourser(imageSrc: 'assets/images/3.jpeg'),
                        ImageCourser(imageSrc: 'assets/images/4.jpeg'),
                        ImageCourser(imageSrc: 'assets/images/9.jpeg'),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h,),
                  Text('Hote products', style: TextAppStyle().titleMainSection,),
                  SizedBox(height: 12.h,),
                  Expanded(child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      CustomeCard(titleProduct: 'Orange', price: 12, imageSrc: 'assets/images/2.jpeg',),
                      SizedBox(height: 8.h,),
                      CustomeCard(titleProduct: 'Apple', price: 8, imageSrc: 'assets/images/1.jpg',),
                      SizedBox(height: 8.h,),
                      CustomeCard(titleProduct: 'Banana', price: 25, imageSrc: 'assets/images/5.jpeg',),
                      SizedBox(height: 8.h,),
                      CustomeCard(titleProduct: 'Strawberry', price: 30, imageSrc: 'assets/images/19.jpeg',),
                    ],
                  )),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}