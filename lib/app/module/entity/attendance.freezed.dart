// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Attendance _$AttendanceFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'entity':
      return AttendanceEntity.fromJson(json);
    case 'paramEntity':
      return AttendanceParamEntity.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Attendance',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Attendance {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'start_time') String startTime,
            @JsonKey(name: 'end_time') String endTime, String? date)
        entity,
    required TResult Function(double latitude, double longitude) paramEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'start_time') String startTime,
            @JsonKey(name: 'end_time') String endTime, String? date)?
        entity,
    TResult? Function(double latitude, double longitude)? paramEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'start_time') String startTime,
            @JsonKey(name: 'end_time') String endTime, String? date)?
        entity,
    TResult Function(double latitude, double longitude)? paramEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceEntity value) entity,
    required TResult Function(AttendanceParamEntity value) paramEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEntity value)? entity,
    TResult? Function(AttendanceParamEntity value)? paramEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEntity value)? entity,
    TResult Function(AttendanceParamEntity value)? paramEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Attendance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceCopyWith<$Res> {
  factory $AttendanceCopyWith(
          Attendance value, $Res Function(Attendance) then) =
      _$AttendanceCopyWithImpl<$Res, Attendance>;
}

/// @nodoc
class _$AttendanceCopyWithImpl<$Res, $Val extends Attendance>
    implements $AttendanceCopyWith<$Res> {
  _$AttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AttendanceEntityImplCopyWith<$Res> {
  factory _$$AttendanceEntityImplCopyWith(_$AttendanceEntityImpl value,
          $Res Function(_$AttendanceEntityImpl) then) =
      __$$AttendanceEntityImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      String? date});
}

/// @nodoc
class __$$AttendanceEntityImplCopyWithImpl<$Res>
    extends _$AttendanceCopyWithImpl<$Res, _$AttendanceEntityImpl>
    implements _$$AttendanceEntityImplCopyWith<$Res> {
  __$$AttendanceEntityImplCopyWithImpl(_$AttendanceEntityImpl _value,
      $Res Function(_$AttendanceEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? date = freezed,
  }) {
    return _then(_$AttendanceEntityImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceEntityImpl implements AttendanceEntity {
  _$AttendanceEntityImpl(
      {@JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      this.date,
      final String? $type})
      : $type = $type ?? 'entity';

  factory _$AttendanceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceEntityImplFromJson(json);

  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'end_time')
  final String endTime;
  @override
  final String? date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Attendance.entity(startTime: $startTime, endTime: $endTime, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceEntityImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, date);

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceEntityImplCopyWith<_$AttendanceEntityImpl> get copyWith =>
      __$$AttendanceEntityImplCopyWithImpl<_$AttendanceEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'start_time') String startTime,
            @JsonKey(name: 'end_time') String endTime, String? date)
        entity,
    required TResult Function(double latitude, double longitude) paramEntity,
  }) {
    return entity(startTime, endTime, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'start_time') String startTime,
            @JsonKey(name: 'end_time') String endTime, String? date)?
        entity,
    TResult? Function(double latitude, double longitude)? paramEntity,
  }) {
    return entity?.call(startTime, endTime, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'start_time') String startTime,
            @JsonKey(name: 'end_time') String endTime, String? date)?
        entity,
    TResult Function(double latitude, double longitude)? paramEntity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(startTime, endTime, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceEntity value) entity,
    required TResult Function(AttendanceParamEntity value) paramEntity,
  }) {
    return entity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEntity value)? entity,
    TResult? Function(AttendanceParamEntity value)? paramEntity,
  }) {
    return entity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEntity value)? entity,
    TResult Function(AttendanceParamEntity value)? paramEntity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceEntityImplToJson(
      this,
    );
  }
}

abstract class AttendanceEntity implements Attendance {
  factory AttendanceEntity(
      {@JsonKey(name: 'start_time') required final String startTime,
      @JsonKey(name: 'end_time') required final String endTime,
      final String? date}) = _$AttendanceEntityImpl;

  factory AttendanceEntity.fromJson(Map<String, dynamic> json) =
      _$AttendanceEntityImpl.fromJson;

  @JsonKey(name: 'start_time')
  String get startTime;
  @JsonKey(name: 'end_time')
  String get endTime;
  String? get date;

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceEntityImplCopyWith<_$AttendanceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendanceParamEntityImplCopyWith<$Res> {
  factory _$$AttendanceParamEntityImplCopyWith(
          _$AttendanceParamEntityImpl value,
          $Res Function(_$AttendanceParamEntityImpl) then) =
      __$$AttendanceParamEntityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$AttendanceParamEntityImplCopyWithImpl<$Res>
    extends _$AttendanceCopyWithImpl<$Res, _$AttendanceParamEntityImpl>
    implements _$$AttendanceParamEntityImplCopyWith<$Res> {
  __$$AttendanceParamEntityImplCopyWithImpl(_$AttendanceParamEntityImpl _value,
      $Res Function(_$AttendanceParamEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$AttendanceParamEntityImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceParamEntityImpl implements AttendanceParamEntity {
  _$AttendanceParamEntityImpl(
      {required this.latitude, required this.longitude, final String? $type})
      : $type = $type ?? 'paramEntity';

  factory _$AttendanceParamEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceParamEntityImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Attendance.paramEntity(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceParamEntityImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceParamEntityImplCopyWith<_$AttendanceParamEntityImpl>
      get copyWith => __$$AttendanceParamEntityImplCopyWithImpl<
          _$AttendanceParamEntityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'start_time') String startTime,
            @JsonKey(name: 'end_time') String endTime, String? date)
        entity,
    required TResult Function(double latitude, double longitude) paramEntity,
  }) {
    return paramEntity(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'start_time') String startTime,
            @JsonKey(name: 'end_time') String endTime, String? date)?
        entity,
    TResult? Function(double latitude, double longitude)? paramEntity,
  }) {
    return paramEntity?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'start_time') String startTime,
            @JsonKey(name: 'end_time') String endTime, String? date)?
        entity,
    TResult Function(double latitude, double longitude)? paramEntity,
    required TResult orElse(),
  }) {
    if (paramEntity != null) {
      return paramEntity(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AttendanceEntity value) entity,
    required TResult Function(AttendanceParamEntity value) paramEntity,
  }) {
    return paramEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AttendanceEntity value)? entity,
    TResult? Function(AttendanceParamEntity value)? paramEntity,
  }) {
    return paramEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AttendanceEntity value)? entity,
    TResult Function(AttendanceParamEntity value)? paramEntity,
    required TResult orElse(),
  }) {
    if (paramEntity != null) {
      return paramEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceParamEntityImplToJson(
      this,
    );
  }
}

abstract class AttendanceParamEntity implements Attendance {
  factory AttendanceParamEntity(
      {required final double latitude,
      required final double longitude}) = _$AttendanceParamEntityImpl;

  factory AttendanceParamEntity.fromJson(Map<String, dynamic> json) =
      _$AttendanceParamEntityImpl.fromJson;

  double get latitude;
  double get longitude;

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceParamEntityImplCopyWith<_$AttendanceParamEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
