import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:kingu_dev/features/mol_trip/domain/mol_trip.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mol_trip_providers.g.dart';

final dio = Dio();

@riverpod
Future<List<MolTrip>> molTrips(
  MolTripsRef ref,
) async {
  final result = await dio.get<String>(
    'https://raw.githubusercontent.com/KoheiKanagu/kingu_dev/main/assets/contents/mol_trip.json',
  );
  final data = result.data;
  final list = json.decode(data!) as List<dynamic>;

  return list
      .map((e) => e as Map<String, dynamic>)
      .map(MolTrip.fromJson)
      .toList();
}
