import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountInitialState());
  static AccountCubit get(BuildContext context) => BlocProvider.of(context);
  bool? _hidePassword = true;
  bool? _isLoginSaved = false;
  String? _dropDownValue;

  String? get dropDownValue => _dropDownValue;
  set changeDropDownValue(String value) {
    emit(DropDownValueLoadingState());
    _dropDownValue = value;
    emit(DropDownValueLoadedState());
  }

  bool get isLoginSaved => _isLoginSaved!;
  set changeLoginSaved(bool value) {
    emit(HidePasswordLoadingState());
    _isLoginSaved = value;
    emit(HidePasswordLoadedState());
  }

  bool get hidePasswordValue => _hidePassword!;
  void changeHidePassword() {
    emit(HidePasswordLoadingState());
    _hidePassword = !_hidePassword!;
    emit(HidePasswordLoadedState());
  }
}
