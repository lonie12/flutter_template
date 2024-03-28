import 'package:dio/dio.dart';
import 'package:mainuse/helpers/dio.provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'courier.repository.g.dart';

class CourierRepository {
  CourierRepository({required this.client});

  final Dio client;
}

@riverpod
CourierRepository courierRepository(CourierRepositoryRef ref) =>
    CourierRepository(
      client: ref.watch(dioProvider),
    );
