
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildPostItem extends StatelessWidget {
  const BuildPostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 4),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.r),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  height: 35.h,
                  width: 35.h,
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
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      'عبد الله ابو سمرة',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(
                        fontSize: 16.sp,
                        color: Colors.grey[900],
                      ),
                    ),

                    Directionality(textDirection: TextDirection.ltr, child: Text(
                      '4:18 pm',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(
                          fontSize: 13.sp,
                          color: Colors.grey[700]),
                    ),),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                  ' شمسنةي كشمسية كشمسية شكمسةيشكنسة يمبنكةشثحلةقثننثلنننننننقنةن ن ن نةن رم ةكمبية نيم ةم '),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: double.infinity,
              height: 170.h,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/phone.png'),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: double.infinity,
              height: 27.h,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(7.r),
                    bottomRight: Radius.circular(7.r),
                  )),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 8.w,
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 20.r,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          '25',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'comments',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          '25',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(),
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
