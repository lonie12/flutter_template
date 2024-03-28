import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.provider.g.dart';

@riverpod
Dio dio(DioRef ref) => Dio();
