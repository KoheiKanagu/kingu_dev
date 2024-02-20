// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mol_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MolTrip _$MolTripFromJson(Map<String, dynamic> json) {
  return _MolTrip.fromJson(json);
}

/// @nodoc
mixin _$MolTrip {
  String get title => throw _privateConstructorUsedError;
  List<String> get memory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MolTripCopyWith<MolTrip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolTripCopyWith<$Res> {
  factory $MolTripCopyWith(MolTrip value, $Res Function(MolTrip) then) =
      _$MolTripCopyWithImpl<$Res, MolTrip>;
  @useResult
  $Res call({String title, List<String> memory});
}

/// @nodoc
class _$MolTripCopyWithImpl<$Res, $Val extends MolTrip>
    implements $MolTripCopyWith<$Res> {
  _$MolTripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? memory = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MolTripImplCopyWith<$Res> implements $MolTripCopyWith<$Res> {
  factory _$$MolTripImplCopyWith(
          _$MolTripImpl value, $Res Function(_$MolTripImpl) then) =
      __$$MolTripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<String> memory});
}

/// @nodoc
class __$$MolTripImplCopyWithImpl<$Res>
    extends _$MolTripCopyWithImpl<$Res, _$MolTripImpl>
    implements _$$MolTripImplCopyWith<$Res> {
  __$$MolTripImplCopyWithImpl(
      _$MolTripImpl _value, $Res Function(_$MolTripImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? memory = null,
  }) {
    return _then(_$MolTripImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      memory: null == memory
          ? _value._memory
          : memory // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MolTripImpl implements _MolTrip {
  const _$MolTripImpl({required this.title, required final List<String> memory})
      : _memory = memory;

  factory _$MolTripImpl.fromJson(Map<String, dynamic> json) =>
      _$$MolTripImplFromJson(json);

  @override
  final String title;
  final List<String> _memory;
  @override
  List<String> get memory {
    if (_memory is EqualUnmodifiableListView) return _memory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memory);
  }

  @override
  String toString() {
    return 'MolTrip(title: $title, memory: $memory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MolTripImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._memory, _memory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_memory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MolTripImplCopyWith<_$MolTripImpl> get copyWith =>
      __$$MolTripImplCopyWithImpl<_$MolTripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MolTripImplToJson(
      this,
    );
  }
}

abstract class _MolTrip implements MolTrip {
  const factory _MolTrip(
      {required final String title,
      required final List<String> memory}) = _$MolTripImpl;

  factory _MolTrip.fromJson(Map<String, dynamic> json) = _$MolTripImpl.fromJson;

  @override
  String get title;
  @override
  List<String> get memory;
  @override
  @JsonKey(ignore: true)
  _$$MolTripImplCopyWith<_$MolTripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
