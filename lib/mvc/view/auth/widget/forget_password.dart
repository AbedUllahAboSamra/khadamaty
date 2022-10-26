import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/mvc/controller/auth/auth_cubit.dart';
import 'package:khadamaty_project/mvc/view/auth/login_screen.dart';
import 'package:khadamaty_project/mvc/view/auth/widget/text_form_widget.dart';
import 'package:khadamaty_project/widget/back_icon.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is  AuthForgetSendEmailLoadedState ){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 8.h,),
                  Container(
                    height: 55.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/donaaaaaaaae.png')
                      )
                    ),

                  ),
                  SizedBox(height: 8.h,),
                  Text('تم الارسال بنجاح',style: Theme.of(context).textTheme.headline4,),
                  SizedBox(height: 4.h,),
                  Text('تم ارسال رابط لاعادة تعيين كلمة المرور'),
                  SizedBox(height:12.h,),
                  Container(
                    width: double.infinity,
                    height: 42.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15.w)),
                    child: InkWell(
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (c){return LoginScreen();}));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('موافق',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp),
                              textAlign: TextAlign.center),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            );
          });

        }

      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 16.h),
                            child: BackIcon()),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          "هل نسيت كلمة المرور ؟",
                          style:
                              Theme.of(context).textTheme.headline2?.copyWith(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'أدخل البريد الالكتروني المسجل لدينا سوف يتم ارسال رابط لاعادة تعيين كلمة المرور',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(color: Colors.grey[700]),
                        ),
                        SizedBox(
                          height: 34.h,
                        ),
                        TextFormWidget(
                          hint: 'البريد الالكتروني',
                          textInputType: TextInputType.emailAddress,
                          controller: emailController,
                        ),
                        SizedBox(
                          height: 220.h,
                        ),
                        Container(
                          width: double.infinity,
                          height: 43.h,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(15.w)),
                          margin: EdgeInsets.symmetric(horizontal: 12.w),
                          child: state is AuthForgetSendEmailLoadingState? Center(child: CircularProgressIndicator(
                            color: Colors.black,
                          ),):InkWell(
                            focusColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              if (emailController.text.isNotEmpty) {
                                AuthCubit.get(context).forgetPasswordMethod(
                                    email: emailController.text);
                              } else {




                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child:
                                          Text('لا يمكن ترك حقل البريد فارغ')),
                                  backgroundColor: Colors.redAccent,
                                ));
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('ارسال',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.sp),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ]),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
