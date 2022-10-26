import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/mvc/view/auth/widget/text_form_widget.dart';
import 'package:khadamaty_project/widget/back_icon.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final koligController = TextEditingController();
  final numberOfYearsController = TextEditingController();
  final aboutMeController = TextEditingController();
  var itemsString = [
    'عميل',
    'الاتجار و التنفيذ',
    'شركة',
    'تعليم',
    'متجر',];
  String dropDownValue = 'عميل';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                    child: BackIcon()),
                Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 75.h,
                        width: 75.h,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Container(
                              height: 75.h,
                              width: 75.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(888888.r),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/user.png'),
                                  fit: BoxFit.fill,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(1.r),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(222222.r)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                          child: TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        maxLines: 1,
                        maxLength: 40,
                        decoration: InputDecoration(
                          hintText: "الاسم",
                          counter: Container(),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            borderSide:
                                BorderSide(color: Colors.grey[300]!, width: 2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            borderSide:
                                const BorderSide(color: Colors.black, width: 2),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 16.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFormWidget(
                    hint: 'البريد الالكتروني',
                    textInputType: TextInputType.emailAddress,
                    controller: emailController),
                SizedBox(
                  height: 10.h,
                ),
                TextFormWidget(
                    hint: 'رقم الهاتف',
                    textInputType: TextInputType.phone,
                    controller: phoneController),
                SizedBox(
                  height: 10.h,
                ),
                  TextFormWidget(
                    hint: 'كلمة السر',
                    textInputType: TextInputType.visiblePassword,
                    controller: passwordController),
                SizedBox(
                  height: 10.h,
                ),
                TextFormWidget(
                    hint: 'التخصص',
                    textInputType: TextInputType.name,
                    controller: koligController),
                SizedBox(
                  height: 10.h,
                ),
                TextFormWidget(
                    hint: 'التخصص',
                    textInputType: TextInputType.name,
                    controller: koligController),
                SizedBox(
                  height: 10.h,
                ),
                TextFormWidget(
                    hint: 'عدد سنوات الخبرة',
                    textInputType: TextInputType.number,
                    controller: numberOfYearsController),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),

                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    controller: aboutMeController,
                    decoration: InputDecoration(
                      hintText: "نبذة عني",
                      enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey[300]!
                        )
                      ),
                      focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.grey[300]!
                          )
                      )
                    ),


                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.h,vertical: 16.h),
                  width: double.infinity,
                  child: DropdownButton(
                    hint: Text("التخصص"),
                    // Initial Value
                    value: dropDownValue,

                    // Down Arrow Icon
                    icon:   Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.keyboard_arrow_down),
                    ),

                    // Array list of items
                    items: itemsString.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items,
                        style: Theme.of(context).textTheme.headline5,
                        ),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {

                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 40.h,

                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15.w)),
                  margin: EdgeInsets.symmetric(horizontal: 25.w, ),
                  child: InkWell(
                    focusColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Text('التالي',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp),
                        textAlign: TextAlign.center),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
