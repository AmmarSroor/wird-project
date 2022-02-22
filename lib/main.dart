import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/home_page.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/layout_page.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_sales.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/pages/login_and_register_page.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/pages/register_page.dart';
import 'package:ramadan_cmpetitions/screens/start_up/pages/start_up_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AccountCubit>(
          create: (_)=> AccountCubit(),
        ),
        BlocProvider<HomePageCubit>(
          create: (_)=> HomePageCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ar', 'AE'), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        routes: {
          LoginAndRegisterPage.routeName : (ctx) => LoginAndRegisterPage(),
          LayoutPage.routeName : (ctx) => LayoutPage(),
        },
        locale: Locale('ar', 'AE'),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LayoutPage(),
      ),
    );
  }
}
