part of 'account_cubit.dart';

abstract class AccountState extends Equatable {
  @override
  List<Object> get props => [];
}
class AccountInitialState extends AccountState {}

class AccountLoadingState extends AccountState {}
class AccountLoadedState extends AccountState {}
class AccountErrorState extends AccountState {}

class UploadImageLoadingState extends AccountState {}
class UploadImageLoadedState extends AccountState {}
class UploadImageErrorState extends AccountState {}

class HidePasswordLoadingState extends AccountState {}
class HidePasswordLoadedState extends AccountState {}
class HidePasswordErrorState extends AccountState {}
