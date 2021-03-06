import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountInitialState());
  static AccountCubit get(BuildContext context) => BlocProvider.of(context);

  XFile? _imageFile;
  XFile? get imageFile => _imageFile;
  set setImageFile(XFile value) {
    emit(UploadImageLoadingState());
    _imageFile = value;
    emit(UploadImageLoadedState());
  }



  bool? _isLoginSaved = false;
  bool get isLoginSaved => _isLoginSaved!;
  set changeLoginSaved(bool value) {
    emit(HidePasswordLoadingState());
    _isLoginSaved = value;
    emit(HidePasswordLoadedState());
  }

  bool? _hidePassword = true;
  bool get hidePasswordValue => _hidePassword!;
  void changeHidePassword() {
    emit(HidePasswordLoadingState());
    _hidePassword = !_hidePassword!;
    emit(HidePasswordLoadedState());
  }
}
