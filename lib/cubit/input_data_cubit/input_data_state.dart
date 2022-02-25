part of 'input_data_cubit.dart';

abstract class InputDataState extends Equatable {
  @override
  List<Object> get props => [];
}

class InputDataInitial extends InputDataState {}

class CounterPlusLoadingStates extends InputDataState{}
class CounterPlusLoadedStates extends InputDataState{}
class SetCounterLoadingStates extends InputDataState{}
class SetCounterLoadedStates extends InputDataState{}
class CounterMinusLoadingStates extends InputDataState{}
class CounterMinusLoadedStates extends InputDataState{}

class CounterSwitchLoadingStates extends InputDataState{}
class CounterSwitchLoadedStates extends InputDataState{}

class CounterPlusWatchLoadingStates extends InputDataState{}
class CounterPlusWatchLoadedStates extends InputDataState{}
class CounterMinusWatchLoadingStates extends InputDataState{}
class CounterMinusWatchLoadedStates extends InputDataState{}

