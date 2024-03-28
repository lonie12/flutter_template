import 'package:dio/dio.dart';
import 'package:mainuse/helpers/dio.provider.dart';
import 'package:mainuse/helpers/hive_config.dart';
import 'package:mainuse/models/api_response.model.dart';
import 'package:mainuse/models/dtos/rent_car.dto.dart';
import 'package:mainuse/services/car_rental.service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'car_rental.repository.g.dart';

class CarRentalRepository {
  CarRentalRepository({
    required this.client,
  });

  final Dio client;
  final user = HiveLocal.box.get("user")!;

  Future<ApiResponse> getCars() async {
    final CarRentalService service = CarRentalService(client);
    return await service.getCars(user.token);
  }

  Future<ApiResponse> rentCar(RentCarDto dto) async {
    final CarRentalService service = CarRentalService(client);
    return await service.rentCar(user.token, dto);
  }
}

@riverpod
CarRentalRepository carRentalRepository(CarRentalRepositoryRef ref) =>
    CarRentalRepository(
      client: ref.watch(dioProvider),
    );
