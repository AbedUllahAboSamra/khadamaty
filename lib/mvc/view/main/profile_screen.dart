import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/mvc/view/main/widget/build_post_item.dart';
import 'package:khadamaty_project/widget/back_icon.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 1,
        leading: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.w),
          child: BackIcon(),
        ),
        title: Text('الملف الشخصي'),
        titleTextStyle: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Center(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    height: 90.h,
                    width: 90.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(888888.r),
                      image: DecorationImage(
                        image: AssetImage('assets/images/user.png'),
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'عبد الله ابو سمرة',
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontSize: 22.sp,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'مهندس برمجيات',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontSize: 18.sp, color: Colors.grey[700]),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    height: 45.h,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('150',
                                style: Theme.of(context).textTheme.headline4),
                            Spacer(),
                            Text(
                              'المتابعين',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                    color: Color(0xFFFFC20F),
                                    fontSize: 18.sp,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 32.w,
                        ),
                        Container(
                          color: Colors.grey,
                          width: 1.5.w,
                          height: double.infinity,
                        ),
                        SizedBox(
                          width: 32.w,
                        ),
                        Column(
                          children: [
                            Text('150',
                                style: Theme.of(context).textTheme.headline4),
                            Spacer(),
                            Text(
                              'المتابعين',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                    color: Color(0xFFFFC20F),
                                    fontSize: 18.sp,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15.w)),
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    child: InkWell(
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Center(
                        child: Text('متابعة',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return BuildPostItem();
              }, childCount: 5),
            ),
          ],
        ),
      ),
    );
  }
}
