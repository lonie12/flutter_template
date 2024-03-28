import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mainuse/helpers/text_input_validation.dart';

part 'car_rental.form.freezed.dart';

@freezed
class RentCarState with _$RentCarState {
  const factory RentCarState({
    @Default(StringFormz.pure()) StringFormz days,
    @Default(StringFormz.pure()) StringFormz city,
    @Default(IntegerFormz.pure()) IntegerFormz duration,
    @Default("") String description,
    @Default(false) bool withDriver,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
  }) = _RentCarState;
}
