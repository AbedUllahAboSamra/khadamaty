import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/mvc/controller/auth/auth_cubit.dart';
import 'package:khadamaty_project/mvc/view/auth/sign_up_screen.dart';
import 'package:khadamaty_project/mvc/view/auth/widget/forget_password.dart';
import 'package:khadamaty_project/mvc/view/auth/widget/text_form_widget.dart';
import 'package:khadamaty_project/mvc/view/main/main_screen.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener

        if (state is AuthLoginLoadedState) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MainScreen(
              user: state.user,
            );
          }));
        }
        if (state is AuthLoginErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('يرجى التأكد من البريد او الكلمةّ')),
            backgroundColor: Colors.redAccent,
          ));
        }
      },
      builder: (context, state) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
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
                    decoration: const BoxDecoration(
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
                    child:   InkWell(
                            focusColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ForgetPassword();
                              }));
                            },
                            child: Text('هل نسيت كلمة المرور ؟',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(
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
                    child: state is AuthLoginLoadingState
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.black,
                            ),
                          )
                        : InkWell(
                            focusColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              if (emailController.text.isNotEmpty &&
                                  emailController.text.contains("@") &&
                                  emailController.text.contains(".")&&
                                  passController.text.isNotEmpty &&
                                  passController.text.length >=6
                              ) {
                                AuthCubit.get(context).loginMethod(email: emailController.text, password: passController.text);

                              }else{
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                  content: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Text('يجب التحقق من صحة البيانات المدخلة')),
                                  backgroundColor: Colors.redAccent,
                                ));
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(),
                                Text('دخول',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.sp),
                                    textAlign: TextAlign.center),
                                Container(
                                    margin: EdgeInsets.only(left: 10.w),
                                    child: const Icon(
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
                      Text(
                        'ليس لديك حساب ؟',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.black,
                            ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        child: Text(
                          'انشاء حساب',
                          style:
                              Theme.of(context).textTheme.headline5?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
