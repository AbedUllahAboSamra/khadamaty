import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/mvc/view/auth/widget/text_form_widget.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen({Key? key}) : super(key: key);

  final cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: double.infinity,
              height: 170.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/city.png"))),
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              'من فضلك حدد المدينة والموقع',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 25.h,
            ),
            TextFormWidget(
                hint: 'المدينة',
                textInputType: TextInputType.name,
                controller: cityController),
            SizedBox(
              height: 25.h,
            ),
            TextFormWidget(
                hint: 'المحافظة',
                textInputType: TextInputType.name,
                controller: cityController),
            SizedBox(
              height: 36.h,
            ),
            Container(
              width: double.infinity,
              height: 43.h,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15.w)),
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              child: InkWell(
                focusColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child:  Center(
                  child: Text('إنهاء',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp),
                      textAlign: TextAlign.center),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
