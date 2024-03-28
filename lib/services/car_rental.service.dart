import 'package:dio/dio.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/models/api_response.model.dart';
import 'package:mainuse/models/dtos/rent_car.dto.dart';
import 'package:retrofit/retrofit.dart';

part 'car_rental.service.g.dart';

@RestApi(baseUrl: apiUrl)
abstract class CarRentalService {
  factory CarRentalService(Dio dio, {String baseUrl}) = _CarRentalService;

  @GET("/vehicle/all")
  Future<ApiResponse> getCars(
    @Header('Authorization') String token,
  );

  @POST("/bookingvehicle/add")
  Future<ApiResponse> rentCar(
    @Header('Authorization') String token,
    @Body() RentCarDto rentCarDto,
  );
}
