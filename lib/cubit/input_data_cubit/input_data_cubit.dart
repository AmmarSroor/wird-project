import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'input_data_state.dart';

class InputDataCubit extends Cubit<InputDataState> {

  static InputDataCubit get(BuildContext context) => BlocProvider.of(context);
  InputDataCubit() : super(InputDataInitial());

  int _count=0;
  int get getCount => _count;
  set setCount(int value) {
    emit(SetCounterLoadingStates());
    _count = value;
    emit(SetCounterLoadedStates());
  }
  void plus()
  {
    emit(CounterPlusLoadingStates());
    _count++;
    emit(CounterPlusLoadedStates());
  }
  void minus()
  {
    emit(CounterMinusLoadingStates());
    if(_count>0)
    _count--;
    emit(CounterMinusLoadedStates());
  }


  bool _check = false;
  bool get getCheck => _check;
  void switchCheck()
  {
    emit(CounterSwitchLoadingStates());
    _check=!_check;
    emit(CounterSwitchLoadedStates());
  }



  int _countWatch=0;
  int get getCountWatch => _countWatch;
  void plusWatch()
  {
    emit(CounterPlusWatchLoadingStates());
    _countWatch++;
    emit(CounterPlusWatchLoadedStates());
  }
  void minusWatch()
  {
    emit(CounterMinusWatchLoadingStates());
    if(_countWatch>0)
      _countWatch--;
    emit(CounterMinusWatchLoadedStates());
  }



}
