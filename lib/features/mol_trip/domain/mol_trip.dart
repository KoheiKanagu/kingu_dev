import 'package:freezed_annotation/freezed_annotation.dart';

part 'mol_trip.freezed.dart';
part 'mol_trip.g.dart';

@freezed
class MolTrip with _$MolTrip {
  const factory MolTrip({
    required String title,
    required String timeline,
  }) = _MolTrip;

  factory MolTrip.fromJson(Map<String, dynamic> json) =>
      _$MolTripFromJson(json);
}
