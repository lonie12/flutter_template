import 'dart:io';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'courier.viewmodel.g.dart';

@riverpod
class MakeCourierRequest extends _$MakeCourierRequest {
  @override
  List<File>? build() => <File>[];

  addMedia(File media) => state!.add(media);
}
