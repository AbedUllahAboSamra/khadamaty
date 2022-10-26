


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/widget/back_icon.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            leading: BackIcon(),
            backgroundColor: Theme.of(context).primaryColor,
            title: Text(
             'انشاء منشور',
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

                        Text('نشر',
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

      ),
    );
  }
}
