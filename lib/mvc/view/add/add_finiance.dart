import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/widget/back_icon.dart';

class AddFinance extends StatelessWidget {
  const AddFinance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'انشاء مناقصة',
          style: Theme.of(context).textTheme.headline4?.copyWith(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Column(
                  children: [Text('أضف صور'  , style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500
                  ),),
                    SizedBox(height: 16.h,),
                    Icon(Icons.camera_alt,color: Theme.of(context).primaryColor,size: 60.sp,),
                  ],
                ),
              ),
              SizedBox(height: 40.h,),
              Text('الوصف',style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 6.h,),
              Container(
                color: Colors.white,
                child: TextFormField(
                  minLines: 8,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(
                              color: Colors.grey[400]!
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Text('ارفاق ملفات',style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 6.h,),
              Container(
                color: Colors.white,
                child: TextFormField(
                  minLines: 1,
                  enabled: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.file_present),
                      hintText: "اختر ملف",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Text('التخصص'),
              SizedBox(height: 6.h,),
              Container(
                color: Colors.white,
                child: TextFormField(
                  minLines: 1,
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Text('المحافظة'),
              SizedBox(height: 6.h,),
              Container(
                color: Colors.white,
                child: TextFormField(
                  minLines: 1,
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Text('كم يوما؟'),
              SizedBox(height: 6.h,),
              Container(
                color: Colors.white,
                child: TextFormField(
                  minLines: 1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Text('عدد الاشخاص المستهدفين'),
              SizedBox(height: 6.h,),
              Container(
                color: Colors.white,
                child: TextFormField(
                  minLines: 1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text('الميزانية الخاصة بي'),
              SizedBox(height: 6.h,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      height: 42.h,
                      child: TextFormField(

                        minLines: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.r),
                              borderSide: BorderSide(
                                color: Colors.grey[300]!,
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.r),
                              borderSide: BorderSide(
                                color: Colors.grey[300]!,
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Text('الى'),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      height: 42.h,
                      child: TextFormField(

                        minLines: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.r),
                              borderSide: BorderSide(
                                color: Colors.grey[300]!,
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.r),
                              borderSide: BorderSide(
                                color: Colors.grey[300]!,
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              SizedBox(height: 16.h,),
              Container(
                width: double.infinity,
                height: 40.h,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15.w)),
                child: InkWell(
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text('دخول',
                          style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp),
                          textAlign: TextAlign.center),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h,),

            ],
          ),
        ),
      ),
    );
  }
}
