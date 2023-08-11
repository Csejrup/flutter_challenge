import 'package:flutter/material.dart';

@immutable
class Geo {
  const Geo({
    required this.lat,
    required this.lng,
  });

  final String lat;
  final String lng;

  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
}
