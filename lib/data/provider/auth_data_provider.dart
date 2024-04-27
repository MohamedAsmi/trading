// ignore_for_file: use_rethrow_when_possible

import 'package:dio/dio.dart';

import '../../configs/app_config.dart';
import '../../configs/utils/helpers/web_client.dart';

class AuthDataProvider {
  Future<Response<dynamic>> login(data) async {
    try {
      final response = await WebClient.post(
        AppConfig.login,
        data: data,
      );

      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<Response<dynamic>> register(data) async {
    try {
      final response = await WebClient.post(AppConfig.register, data: data);

      return response;
    } catch (e) {
      throw e;
    }
  }
}
