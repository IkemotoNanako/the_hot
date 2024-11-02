import 'package:flutter_hackathon_2024/domain/todo_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_state.freezed.dart';

@freezed
class SampleState with _$SampleState {
  const factory SampleState({
    required List<Todo> sampleList,
  }) = _SampleState;
}
