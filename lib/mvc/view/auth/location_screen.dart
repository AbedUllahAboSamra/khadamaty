import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/mvc/controller/auth/auth_cubit.dart';
import 'package:khadamaty_project/mvc/view/auth/widget/text_form_widget.dart';

import '../main/main_screen.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen(
      {Key? key,
      required this.name,
      required this.email,
      required this.password,
      required this.phone,
      required this.kolge,
      required this.years,
      required this.aboutMe,
      required this.accountType})
      : super(key: key);

  final String name;
  final String email;
  final String password;
  final String phone;
  final String kolge;
  final String years;
  final String aboutMe;
  final String accountType;

  final cityController = TextEditingController();
  final subCityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is AuthCreateAccountLoadedState) {
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
                child: Text("يرجى التحقق من المعلومات")),
            backgroundColor: Colors.redAccent,
          ));
        }
      },
      builder: (context, state) {
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
                  decoration: const BoxDecoration(
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
                    controller: subCityController),
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
                  child: state is AuthCreateAccountLoadingState
                      ? const Center(
                          child: CircularProgressIndicator(   color: Colors.black,),
                        )
                      : InkWell(
                          onTap: () {
                         if(cityController.text.isNotEmpty && subCityController.text.isNotEmpty){
                           AuthCubit.get(context).createAccountMethod(
                               password: password,
                               email: email,
                               phone: phone,
                               aboutMe: aboutMe,
                               accountType: accountType,
                               kolge: kolge,
                               name: name,
                               years: years,
                               city : cityController.text,
                               subCity:subCityController.text
                           );

                         }else{
                           ScaffoldMessenger.of(context)
                               .showSnackBar(SnackBar(
                             content: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child:
                                 Text('لا يمكن ترك حقل المدينة فارغ')),
                             backgroundColor: Colors.redAccent,
                           ));
                         }
                          },
                          focusColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Center(
                            child: Text('إنهاء',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(
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
      },
    );
  }
}
