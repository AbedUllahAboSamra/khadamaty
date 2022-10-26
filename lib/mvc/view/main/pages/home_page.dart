import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/mvc/controller/main/main_cubit.dart';
import 'package:khadamaty_project/mvc/view/main/widget/build_post_item.dart';

class HomePage extends StatelessWidget {
  List<String> jobs = [
    'تكنولوجيا المعلومات',
    'تطبيقات',
    'ويب',
    'تصميم',
    'تطبيقات',
    'ويب',
    'تصميم',
    'تطبيقات',
    'ويب',
    'تصميم',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20.h,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 30.h,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          MainCubit.get(context).changeSelectedItem(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: MainCubit.get(context).selectedItem == index
                                ? Colors.grey[500]
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            jobs[index],
                            style: TextStyle(
                              color:
                                  MainCubit.get(context).selectedItem == index
                                      ? Colors.white
                                      : Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 8.w,
                      );
                    },
                    itemCount: jobs.length,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 16.h,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return BuildPostItem();
                  },
                  childCount: 5,
                ),
              ),
            ]);
      },
    );
  }
}
