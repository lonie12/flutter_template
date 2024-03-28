import 'package:dio/dio.dart';
import 'package:formz/formz.dart';
import 'package:mainuse/helpers/text_input_validation.dart';
import 'package:mainuse/models/car.model.dart';
import 'package:mainuse/models/dtos/rent_car.dto.dart';
import 'package:mainuse/models/view.model.dart';
import 'package:mainuse/repositories/car_rental.repository.dart';
import 'package:mainuse/services/forms/car_rental.form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'car_rental.viewmodel.g.dart';

@riverpod
class CarRentaLoader extends _$CarRentaLoader {
  @override
  bool build() => false;

  void isRequested() {
    state = true;
  }

  void dispose() {
    state = false;
  }
}

@riverpod
class RentCarController extends _$RentCarController {
  @override
  RentCarState build() => const RentCarState();

  FormzSubmissionStatus validate({
    StringFormz? days,
    StringFormz? city,
    // IntegerFormz? duration,
  }) {
    return Formz.validate([
      days ?? state.days,
      city ?? state.city,
      // duration ?? state.duration,
    ])
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
  }

  void updateDays(String value) {
    final days = StringFormz.dirty(value);
    state = state.copyWith(days: days, status: validate(days: days));
  }

  void updateCity(String value) {
    final city = StringFormz.dirty(value);
    state = state.copyWith(city: city, status: validate(city: city));
  }

  void updateDuration(String value) {
    final duration = IntegerFormz.dirty(value);
    state = state.copyWith(
      duration: duration,
      // status: validate(duration: duration),
    );
  }

  void updateDescription(String value) {
    state = state.copyWith(description: value);
  }

  void updateWithDriver(bool value) {
    state = state.copyWith(withDriver: value);
  }
}

@riverpod
Future<ViewModel<List<Car>?>> getCars(GetCarsRef ref) async {
  try {
    var response = await ref.watch(carRentalRepositoryProvider).getCars();
    var cars = List<Car>.from(
      (response.data).map((json) => Car.fromJson(json)),
    );
    return ViewModel<List<Car>>(error: false, message: "ok", data: cars);
  } catch (e) {
    if (e is DioException && e.response!.statusCode == 403) {
      return const ViewModel(
        error: true,
        message: "Vous n'êtes pas autorisé...",
        data: [],
      );
    } else {
      return const ViewModel(error: true, data: []);
    }
  }
}

@riverpod
Future<ViewModel<List<Car>?>> rentCar(
  RentCarRef ref, {
  required String vehicleId,
}) async {
  var rentCarController = ref.watch(rentCarControllerProvider);
  try {
    ref.read(carRentaLoaderProvider.notifier).isRequested();
    RentCarDto dto = RentCarDto(
      duration: rentCarController.duration.value,
      durationtype: rentCarController.days.value,
      withDriver: rentCarController.withDriver,
      city: rentCarController.city.value,
      vehicleId: vehicleId,
    );
    await ref.watch(carRentalRepositoryProvider).rentCar(dto);
    ref.read(carRentaLoaderProvider.notifier).dispose();
    // var cars = List<Car>.from(
    //   (response.data).map((json) => Car.fromJson(json)),
    // );
    // print(response);
    return const ViewModel<List<Car>>(error: false, message: "ok", data: []);
  } catch (e) {
    if (e is DioException && e.response!.statusCode == 403) {
      return const ViewModel(
        error: true,
        message: "Vous n'êtes pas autorisé...",
        data: [],
      );
    } else {
      return const ViewModel(error: true, data: []);
    }
  }
}
