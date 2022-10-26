import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/mvc/view/auth/widget/text_form_widget.dart';


class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passController = TextEditingController();

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
                      image: AssetImage("assets/images/lunchimage.png"))),
            ),
            SizedBox(
              height: 50.h,
            ),
            TextFormWidget(
              hint: "البريد الالكترونيّ",
              controller: emailController,
              textInputType: TextInputType.emailAddress,
              isPassword: false,
            ),
            SizedBox(
              height: 8.h,
            ),
            TextFormWidget(
              hint: "كلمة السر",
              controller: passController,
              textInputType: TextInputType.visiblePassword,
              isPassword: true,
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: InkWell(
                focusColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Text('هل نسيت كلمة المرور ؟',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                    textAlign: TextAlign.start),
              ),
            ),
            SizedBox(
              height: 16.h,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text('دخول',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp),
                        textAlign: TextAlign.center),
                    Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ليس لديك حساب ؟' , style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.black,
                ),),
                SizedBox(width: 8.w,),
                Text('انشاء حساب',style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Theme.of(context).primaryColor,
                ),),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
