import 'package:freezed_annotation/freezed_annotation.dart';

part 'mol_trip.freezed.dart';
part 'mol_trip.g.dart';

@freezed
class MolTrip with _$MolTrip {
  const factory MolTrip({
    required String title,
    required List<String> memory,
  }) = _MolTrip;

  factory MolTrip.fromJson(Map<String, dynamic> json) =>
      _$MolTripFromJson(json);
}
