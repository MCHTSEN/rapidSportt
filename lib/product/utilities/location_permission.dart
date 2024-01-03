import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocationPermission {
  final _locationController = Location();

  Future<LatLng?> getLocation() async {
    LocationData currentPosition;
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await _locationController.serviceEnabled();
    if (serviceEnabled) {
      serviceEnabled = await _locationController.requestService();
    } else {
      return null;
    }

    permissionGranted = await _locationController.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _locationController.requestPermission();
    }
    if (permissionGranted != PermissionStatus.granted) {
      return null;
    }

    currentPosition = await _locationController.getLocation();
    if (currentPosition.latitude != null && currentPosition.longitude != null) {
      print(currentPosition);
      return LatLng(currentPosition.latitude!, currentPosition.longitude!);
    }
    return null;
  }
}
