import 'package:hero_app/data/provider/auth_data_provider.dart';

class AuthRepository {
  final AuthDataProvider authProvider;

  AuthRepository(this.authProvider);
  Future<dynamic> login(data) async {
    try {
      final response = await authProvider.login(data);

      if (response.statusCode == 200) {
        return response;
      } else {
        throw "Something went wrong, please try again";
      }
    } catch (e) {
      throw "Something went wrong, please try again";
    }
  }
}
