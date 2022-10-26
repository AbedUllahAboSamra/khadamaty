// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamaty_project/mvc/controller/main/main_cubit.dart';
import 'package:khadamaty_project/mvc/controller/main/main_cubit.dart';
import 'package:khadamaty_project/mvc/model/user.dart';
import 'package:khadamaty_project/mvc/view/add/add_post.dart';
import 'package:khadamaty_project/mvc/view/main/profile_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key, required this.user}) : super(key: key);
  Usere user;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (context, s) {
                return [
                  SliverAppBar(
                    centerTitle: true,
                    backgroundColor: Color(0xFFFFC20F),
                    leading: Container(),
                    title: Text(
                      MainCubit.get(context)
                          .titles[MainCubit.get(context).index],
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    actions: [
                      MainCubit.get(context).index != 0 &&
                              MainCubit.get(context).index != 1
                          ? IconButton(
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (x) {
                                      return Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.r)),
                                            elevation: 5,
                                            title: Text(
                                              'اضافة',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline3,
                                            ),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 30.h,
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                                        return AddPostScreen();
                                                      }));
                                                    },
                                                    focusColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    child: Text(
                                                      'منشور',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline5
                                                          ?.copyWith(
                                                              fontSize: 15.h,
                                                              color:
                                                                  Colors.blue),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: const Divider(),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  height: 30.h,
                                                  child: InkWell(
                                                    focusColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    child: Text(
                                                      'وظيفة',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline5
                                                          ?.copyWith(
                                                              fontSize: 15.h,
                                                              color:
                                                                  Colors.blue),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Divider(),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  height: 30.h,
                                                  child: InkWell(
                                                    focusColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    child: Text(
                                                      'منشور',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline5
                                                          ?.copyWith(
                                                              fontSize: 15.h,
                                                              color:
                                                                  Colors.blue),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ));
                                    });
                              },
                              icon: Icon(Icons.add))
                          : Container(),
                      MainCubit.get(context).index == 0
                          ? IconButton(
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {},
                              icon: Icon(Icons.settings_outlined))
                          : Container(),
                      MainCubit.get(context).index == 0
                          ? IconButton(
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {},
                              icon: Icon(Icons.login_outlined))
                          : Container(),
                    ],
                    bottom: MainCubit.get(context).index == 2
                        ? PreferredSize(
                            preferredSize: Size(
                              double.infinity,
                              45.h,
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 8.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Colors.white,
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'بحث',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : null,
                  ),
                ];
              },
              body: MainCubit.get(context).pages[MainCubit.get(context).index],
            ),
            bottomNavigationBar: BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              selectedLabelStyle: GoogleFonts.poppins(
                color: Color(0xFFFFC20F),
              ),
              unselectedLabelStyle: GoogleFonts.poppins(
                color: Colors.black,
              ),
              items: const [
                BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage('assets/images/person.png'),
                  ),
                  label: 'شخصي',
                  activeIcon: Image(
                    image: AssetImage('assets/images/person_w.png'),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage('assets/images/notfications.png'),
                  ),
                  label: 'الإشعارات',
                  activeIcon: Image(
                    image: AssetImage('assets/images/notfications_w.png'),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage('assets/images/home.png'),
                  ),
                  label: 'الرئيسية',
                  activeIcon: Image(
                    image: AssetImage('assets/images/home_w.png'),
                  ),
                ),
                BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage('assets/images/business_finance.png'),
                    ),
                    activeIcon: Image(
                      image: AssetImage(
                          'assets/images/business_and_finance_w.png'),
                    ),
                    label: 'مناقصة'),
                BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage('assets/images/job_icon.png'),
                    ),
                    activeIcon: Image(
                      image: AssetImage('assets/images/job_icon_w.png'),
                    ),
                    label: 'وظائف'),
              ],
              onTap: (index) {
                MainCubit.get(context).changePage(index);
              },
              currentIndex: MainCubit.get(context).index,
            ),
          ),
        );
      },
    );
  }
}
