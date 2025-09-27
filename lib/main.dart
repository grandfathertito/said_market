import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:said/screen/home_screen.dart';

void main() {
  runApp(const FirstSession());
}

class FirstSession extends StatelessWidget {
  const FirstSession({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Book Store',
        home: HomeScreen(),
      ),
    );
  }
}