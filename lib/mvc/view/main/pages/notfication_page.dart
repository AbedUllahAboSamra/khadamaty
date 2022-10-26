import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotficationPage extends StatelessWidget {
  const NotficationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: false
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 130.h,
                      child: Image(
                        image: AssetImage('assets/images/interface.png'),
                      )),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'لا يوجد اشعارات',
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        fontSize: 22.sp, fontWeight: FontWeight.bold),
                  )
                ],
              )
            : ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 40.h,
                    child: Card(
                      elevation: 3 ,
                      margin: EdgeInsets.symmetric(horizontal: 16.w),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
child: Row(
  children: [
    Container(
      height: 30.h,
      width: 30.h,
      margin: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.circular(888888.r),
        image: DecorationImage(
          image: AssetImage(
              'assets/images/user.png'),
          fit: BoxFit.fill,
          alignment: Alignment.center,
        ),
      ),
    ),
    SizedBox(width: 4.w,),
    Text('عبد الله ابو سمرة',
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
        fontSize: 16.sp,
      ),
    ),
    SizedBox(width: 8.w,),
    Text('طلب خدمة جديدة',
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
        fontSize: 14.sp,
        color: Colors.grey[600]
      ),
    ),
    Spacer(),
    Directionality(
      textDirection: TextDirection.ltr,

      child: Text('2:30 pm',
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
          fontSize: 10.sp,
          fontWeight: FontWeight.bold
        ),

      ),
    ),
    SizedBox(width: 8.w,)

  ],
),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h,);
                },
                itemCount: 2),
      ),
    );
  }
}
