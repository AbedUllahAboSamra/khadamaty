import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khadamaty_project/mvc/view/main/pages/finiance_page.dart';
import 'package:khadamaty_project/mvc/view/main/pages/home_page.dart';
import 'package:khadamaty_project/mvc/view/main/pages/jobs_page.dart';
import 'package:khadamaty_project/mvc/view/main/pages/notfication_page.dart';
import 'package:khadamaty_project/mvc/view/main/pages/profile_page.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

 static MainCubit get(context) => BlocProvider.of(context);

  List<Widget> pages = [
    ProfilePage(),
    NotficationPage(),
    HomePage(),
    FiniancePage(),
    JopsPage(),
  ];

  List<String> titles = ['الملف الشخصي','الاشعارات','الرئيسية','مناقصة','وظائف'];
  int selectedItem = 0;

  int index =2 ;


  void changePage(int index){
     this.index = index;
     emit(ChangeIndexState());
  }


  void changeSelectedItem(int index){
    print(index);
 selectedItem = index;
     emit(ChangeSelectedItemState());
  }




}
