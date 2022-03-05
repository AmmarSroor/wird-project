import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ramadan_cmpetitions/core/models/result_item_model.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/home_page.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/input_data_page.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/top_persons_page.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/result_page.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  static HomePageCubit get(BuildContext context) => BlocProvider.of(context);
  HomePageCubit() : super(HomePageInitialState());

  bool? _contactUsPressed = false;
  List<ResultItemModel> results = [
    ResultItemModel(
      title: 'قراءة القرآن',
      number: 50,
      forPoint: 5,
    ),
    ResultItemModel(
      title: 'الأذكار',
      number: 100,
      forPoint: 4,
    ),
    ResultItemModel(
      title: 'صلاة على النبي',
      number: 1000,
      forPoint: 2,
    ),
  ];

  bool get contactUsPressed => _contactUsPressed!;
  set pressOnContactUs(bool value) {
    emit(DrawerLoadingState());
    _contactUsPressed = value;
    emit(DrawerLoadedState());
  }

  int _dropDownValue = 1;
  int get dropDownValue => _dropDownValue;
  set changeDropDownValue(int value) {
    emit(DropDownValueLoadingState());
    _dropDownValue = value;
    emit(DropDownValueLoadedState());
  }

  List<Widget> bottomNavigationBarScreens = [
    HomePage(),
    TopThreePersonPage(),
    InputDataPage(),
    ResultsPage(),
  ];
  List<String> announcementList = [
    "اعلان عن يوم قيام ليل لجميع طلاب المركز\n\nليلة الخميس\n\nمسجد عمر بن الخطاب",
    "اعلان عن يوم قيام ليل لجميع طلاب المركز\n\nليلة الخميس\n\nمسجد عمر بن الخطاب",
    "اعلان عن يوم قيام ليل لجميع طلاب المركز\n\nليلة الخميس\n\nمسجد عمر بن الخطاب",
    "اعلان عن يوم قيام ليل لجميع طلاب المركز\n\nليلة الخميس\n\nمسجد عمر بن الخطاب",
  ];
  List<Map<String ,dynamic>> bottomNavigationBarItems = [
    {HOMEPAGE:Icons.home},
    {TOP:Icons.star},
    {NEW_DATA:Icons.archive_outlined},
    {VIEW_PREVIOUS_DATA:Icons.stacked_bar_chart},
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

  Future<void> openGallery(BuildContext context) async{
    emit(ImageProfileLoadingState());
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery ,
    );
    AccountCubit.get(context).setImageFile = image!;
    emit(ImageProfileLoadedState());
  }
}
