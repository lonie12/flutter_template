import 'package:dio/dio.dart';
import 'package:mainuse/helpers/dio.provider.dart';
import 'package:mainuse/helpers/hive_config.dart';
import 'package:mainuse/models/api_response.model.dart';
import 'package:mainuse/models/dtos/auth.dto.dart';
import 'package:mainuse/models/user.model.dart';
import 'package:mainuse/services/auth.service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.repository.g.dart';

class AuthRepository {
  AuthRepository({
    required this.client,
  });

  final Dio client;

  Future<ApiResponse> checkPhone(CheckPhoneDto checkPhoneDto) async {
    final AuthService authService = AuthService(client);
    return await authService.checkPhoneNumber(checkPhoneDto);
  }

  Future<ApiResponse> login(LoginDto loginDto) async {
    final AuthService authService = AuthService(client);
    return await authService.login(loginDto);
  }

  bool logout() {
    return HiveLocal.box.delete("user");
  }

  bool isUserLoggedIn() {
    var user = HiveLocal.box.get("user");
    if (user is User) {
      HiveLocal.bindUser(user);
      return true;
    }
    return false;
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) => AuthRepository(
      client: ref.watch(dioProvider),
    );
