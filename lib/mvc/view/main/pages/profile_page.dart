

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/mvc/view/main/widget/build_post_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
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
                  height: 60.h,
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
                            '  اتابع  ',
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
    );
  }
}
