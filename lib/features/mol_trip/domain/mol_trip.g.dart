// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'mol_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MolTripImpl _$$MolTripImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MolTripImpl',
      json,
      ($checkedConvert) {
        final val = _$MolTripImpl(
          title: $checkedConvert('title', (v) => v as String),
          timeline: $checkedConvert('timeline', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MolTripImplToJson(_$MolTripImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'timeline': instance.timeline,
    };
