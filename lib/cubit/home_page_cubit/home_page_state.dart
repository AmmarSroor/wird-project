part of 'home_page_cubit.dart';

abstract class HomePageState extends Equatable {
  @override
  List<Object> get props => [];
}
class HomePageInitialState extends HomePageState {}

class HomePageBottomNavLoadingState extends HomePageState {}
class HomePageBottomNavLoadedState extends HomePageState {}

class HomePageLoadingState extends HomePageState {}
class HomePageLoadedState extends HomePageState {}
class HomePageErrorState extends HomePageState {}

class DrawerLoadingState extends HomePageState {}
class DrawerLoadedState extends HomePageState {}
class DrawerErrorState extends HomePageState {}

class HomePageSliderLoadingState extends HomePageState {}
class HomePageSliderLoadedState extends HomePageState {}

class DropDownValueLoadingState extends HomePageState {}
class DropDownValueLoadedState extends HomePageState {}
class DropDownValueErrorState extends HomePageState {}

class ImageProfileLoadingState extends HomePageState {}
class ImageProfileLoadedState extends HomePageState {}
