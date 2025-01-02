import 'package:fifty_four_vibes/screens/sign_up_screen/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserModelNotifier extends StateNotifier<UserModel> {
  UserModelNotifier() : super(UserModel());

  void updateEmail(String email) {
    state = UserModel(
      email: email,
      password: state.password,
      dob: state.dob,
      gender: state.gender,
      fullName: state.fullName
    );
  }

  void updatePassword(String password) {
    state = UserModel(
        email: state.email,
        password: password,
        dob: state.dob,
        gender: state.gender,
        fullName: state.fullName
    );
  }

  void updateDob(String dob) {
    state = UserModel(
        email: state.email,
        password: state.password,
        dob: dob,
        gender: state.gender,
        fullName: state.fullName
    );
  }

  void updateGender(String gender) {
    state = UserModel(
        email: state.email,
        password: state.password,
        dob: state.dob,
        gender: gender,
        fullName: state.fullName
    );
  }

  void updateFullName(String fullName) {
    state = UserModel(
        email: state.email,
        password: state.password,
        dob: state.dob,
        gender: state.gender,
        fullName: fullName
    );
  }
}

//create the provider class
final userProvider = StateNotifierProvider<UserModelNotifier, UserModel>((ref) {
  return UserModelNotifier();
});