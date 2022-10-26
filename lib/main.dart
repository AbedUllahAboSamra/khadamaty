import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khadamaty_project/mvc/controller/auth/auth_cubit.dart';
import 'package:khadamaty_project/mvc/controller/main/main_cubit.dart';
import 'package:khadamaty_project/mvc/view/add/add_finiance.dart';
import 'package:khadamaty_project/mvc/view/add/add_job_screen.dart';
import 'package:khadamaty_project/mvc/view/add/add_post.dart';
import 'package:khadamaty_project/mvc/view/auth/location_screen.dart';
import 'package:khadamaty_project/mvc/view/auth/lunch_screen.dart';
import 'package:khadamaty_project/mvc/view/auth/sign_up_screen.dart';
import 'package:khadamaty_project/mvc/view/main/main_screen.dart';
import 'package:khadamaty_project/mvc/view/main/profile_screen.dart';
import 'package:khadamaty_project/pref/shared_pref_controller.dart';
import 'package:khadamaty_project/utils/theme.dart';

import 'mvc/view/auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SharedPrefController().initPref;

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
     statusBarColor: Color(0xFFFFC20F), // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return  MultiBlocProvider(providers: [
     BlocProvider(create: (c)=> MainCubit()),
     BlocProvider(create: (c)=> AuthCubit()),
   ], child: ScreenUtilInit(
       designSize: const Size(360, 640),
       minTextAdapt: true,
       splitScreenMode: true,
       builder: (context, child) {
         return MaterialApp(
             title: 'Flutter Demo',
             debugShowCheckedModeBanner: false,
             theme: lightTheme,
             darkTheme: lightTheme,
             themeMode: ThemeMode.light,
             home: Directionality(
               textDirection: TextDirection.rtl,
               child: LoginScreen(),
             ));
       })); }
}
