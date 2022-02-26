part of 'account_cubit.dart';

abstract class AccountState extends Equatable {
  @override
  List<Object> get props => [];
}
class AccountInitialState extends AccountState {}

class AccountLoadingState extends AccountState {}
class AccountLoadedState extends AccountState {}
class AccountErrorState extends AccountState {}

class HidePasswordLoadingState extends AccountState {}
class HidePasswordLoadedState extends AccountState {}
class HidePasswordErrorState extends AccountState {}

class DropDownValueLoadingState extends AccountState {}
class DropDownValueLoadedState extends AccountState {}
class DropDownValueErrorState extends AccountState {}
