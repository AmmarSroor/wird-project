import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_moon_logo.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_drawer.dart';

class LayoutPage extends StatelessWidget {
  static String routeName = 'LayoutPageRouteName';
  double? screenWidth;
  double? screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final AppBar _appBar = AppBar(
      toolbarHeight: screenHeight! * 0.15,
      backgroundColor: Color(HEX_BLUE_COLOR),
      actions: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BuildMoonLogo(
              width: screenWidth! * 0.18,
              height: screenHeight! * 0.1,
            ),
          ),
        ),
      ],
      // automaticallyImplyLeading: false,
      title: Text('المسابقة الرمضانية'),
      centerTitle: true,
      leadingWidth: 60,
      leading: Builder(builder: (context) {
        return IconButton(
          icon: Icon(
            Icons.menu,
            size: 40,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      }),
    );
    screenHeight = screenHeight! - AppBar().preferredSize.height;
    return SafeArea(
      child: BlocConsumer<HomePageCubit, HomePageState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomePageCubit.get(context);
          return Scaffold(
              appBar: _appBar,
              drawer: BuildDrawer(
                screenHeight: screenHeight!,
                screenWidth: screenWidth!,
              ),
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar:BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index){
                print(index);
                cubit.changeBottomIndex(index);
              },
              items: cubit.bottomItems,
              selectedItemColor:Color(HEX_BLUE_COLOR),
              unselectedItemColor:Color(HEX_GREY_COLOR),
              type: BottomNavigationBarType.fixed,
              unselectedFontSize:11 ,
              selectedFontSize:14 ,
            ) ,
          );
        },
      ),
    );
  }
}
