import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  // GeneralFailure
  const factory ValueFailure.emptyValue({
    required T failedValue,
  }) = EmptyValue<T>;
}
