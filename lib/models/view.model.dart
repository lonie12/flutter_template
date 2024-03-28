import 'package:freezed_annotation/freezed_annotation.dart';

part 'view.model.freezed.dart';
// part 'view.model.g.dart';

@freezed
class ViewModel<T> with _$ViewModel<T> {
  const factory ViewModel({
    required bool error,
    @Default("Une erreur s'est produite. Réessayer") String message,
    required T data,
  }) = _ViewModel;
}
