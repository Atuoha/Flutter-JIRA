import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../domain/models/splash/splash_item.dart';


Widget singleSplashPage({
  required SplashItem splashItem,
}) {
  return Column(
      mainAxisAlignment: kIsWeb? MainAxisAlignment.start: MainAxisAlignment.center,
      crossAxisAlignment:kIsWeb? CrossAxisAlignment.center: CrossAxisAlignment.stretch,
      children: [
        Image.asset(splashItem.imgUrl,width: kIsWeb? 150.w:double.infinity,),
        const Gap(10),
        Text(
          splashItem.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize:kIsWeb? 13.sp: 20.sp,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        // const SizedBox(height: 10),
        Text(
          splashItem.description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize:kIsWeb? 6.sp: 14.sp),
        ),
      ],
    );
}