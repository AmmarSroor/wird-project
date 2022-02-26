import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/home_page.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/input_data_page.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/top_persons_page.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/result_page.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  static HomePageCubit get(BuildContext context) => BlocProvider.of(context);
  HomePageCubit() : super(HomePageInitialState());

  bool? _contactUsPressed = false;
  bool get contactUsPressed => _contactUsPressed!;
  set pressOnContactUs(bool value) {
    emit(DrawerLoadingState());
    _contactUsPressed = value;
    emit(DrawerLoadedState());
  }

  List<Widget> bottomNavigationBarScreens = [
    HomePage(),
    TopThreePersonPage(),
    InputDataPage(),
    ResultsPage(),
  ];
  List<Widget> announcementList = [
    Container(
      decoration: BoxDecoration(
        color: Color(HEX_BLUE_COLOR),
        borderRadius: BorderRadius.circular(40),
        // border: Border.all(width: 3, color: mainColor)
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0,15.0,15.0,25.0),
        child: Text("اعلان عن يوم قيام ليل لجميع طلاب المركز\n\nليلة الخميس\n\nمسجد عمر بن الخطاب",style: TextStyle(color:Color(HEX_LIGHT_WHITE_COLOR),fontSize: 20),),
      )),
    ),
    Container(
      decoration: BoxDecoration(
        color: Color(HEX_BLUE_COLOR),
        borderRadius: BorderRadius.circular(40),
        // border: Border.all(width: 3, color: mainColor)
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0,15.0,15.0,25.0),
        child: Text("اعلان عن يوم قيام ليل لجميع طلاب المركز\n\nليلة الخميس\n\nمسجد عمر بن الخطاب",style: TextStyle(color:Color(HEX_LIGHT_WHITE_COLOR),fontSize: 20),),
      )),
    ),
    Container(
      decoration: BoxDecoration(
        color: Color(HEX_BLUE_COLOR),
        borderRadius: BorderRadius.circular(40),
        // border: Border.all(width: 3, color: mainColor)
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0,15.0,15.0,25.0),
        child: Text("اعلان عن يوم قيام ليل لجميع طلاب المركز\n\nليلة الخميس\n\nمسجد عمر بن الخطاب",style: TextStyle(color:Color(HEX_LIGHT_WHITE_COLOR),fontSize: 20),),
      )),
    ),
    Container(
      decoration: BoxDecoration(
        color: Color(HEX_BLUE_COLOR),
        borderRadius: BorderRadius.circular(40),
        // border: Border.all(width: 3, color: mainColor)
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0,15.0,15.0,25.0),
        child: Text("اعلان عن يوم قيام ليل لجميع طلاب المركز\n\nليلة الخميس\n\nمسجد عمر بن الخطاب",style: TextStyle(color:Color(HEX_LIGHT_WHITE_COLOR),fontSize: 20),),
      )),
    ),
  ];
  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home,),
      label: HOMEPAGE,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.beenhere_outlined,),
      label: TOP,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.archive_outlined,),
      label: NEW_DATA,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.stacked_bar_chart,),
      label: VIEW_PREVIOUS_DATA,
    ),
  ];

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  void changeBottomIndex(int index) {
    emit(HomePageBottomNavLoadingState());
    _currentIndex = index;
    emit(HomePageBottomNavLoadedState());
  }

  int _sliderIndex=0;

  int get sliderIndex => _sliderIndex;
  void changeSliderIndex(int index) {
    emit(HomePageSliderLoadingState());
    _sliderIndex = index;
    emit(HomePageSliderLoadedState());
  }
}
