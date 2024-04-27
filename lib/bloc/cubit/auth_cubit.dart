import 'package:bloc/bloc.dart';
import 'package:hero_app/configs/utils/helpers/app_preferences.dart';
import 'package:hero_app/data/provider/auth_data_provider.dart';
import 'package:hero_app/data/repository/auth_repo.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepository) : super(AuthInitial());
  final AuthRepository authRepository;
  final pref = AppPreferences();

  Future<void> login(String email, String password) async {
    print(email);
    print(password);
    emit(AuthLoading());

    var payLoad = {
      'email': email,
      'password': password,
    };
    try {
      final response = await AuthDataProvider().login(payLoad);
      final responseStatusCode = response.statusCode;
      var data = response.data;
      print(response);
      if (responseStatusCode == 200) {
        await AppPreferences.setString("token", data["data"]["token"]);
        emit(AuthSuccess(msg: data['message']));
      }
    } catch (e) {
      // emit(AuthFailure(msg: e.toString()));
      emit(AuthFailure(msg: e as List<dynamic>));
      // emit(AuthFailure(msg: "Something went wrong, Please try again"));
    }
  }

  Future<void> register(
    String name,
    String email,
    String password,
    String c_password,
  ) async {
    print(name);
    print(email);
    print(password);
    print(c_password);
    emit(AuthLoading());

    var payLoad = {
      "name": name,
      "email": email,
      "password": password,
      "c_password": c_password
    };
    try {
      final response = await AuthDataProvider().register(payLoad);
      final responseStatusCode = response.statusCode;
      var data = response.data;

      if (responseStatusCode == 200) {
        await AppPreferences.setString("token", data["data"]["token"]);

        await AppPreferences.getString("token");
        emit(AuthSuccess(msg: data['message']));

        return;
      }

      print(response);
    } catch (e) {
      // // emit(AuthFailure(msg: "Something went wrong, Please try again"));
      emit(AuthFailure(msg: e as List<dynamic>));
      print("e type ${e[0]}");
    }
  }
}
