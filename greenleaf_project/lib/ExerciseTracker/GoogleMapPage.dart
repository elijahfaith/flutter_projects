import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:greenleaf_project/const.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Googlemappage extends StatelessWidget {
  Googlemappage({super.key});

  LatLng myCurrentLocation = const LatLng(6.4666, 3.4458);
  LatLng myDestinationLocation = const LatLng(6.5764, 3.3653);

  void getPolypoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        googleApiKey: google_api_KEY,
        request: PolylineRequest(
            origin: PointLatLng(
                myCurrentLocation.latitude, myCurrentLocation.longitude),
            destination: PointLatLng(myDestinationLocation.latitude,
                myDestinationLocation.longitude),
            mode: TravelMode.driving));
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition:
          CameraPosition(target: myCurrentLocation, zoom: 13.5),
      markers: {
        Marker(
            markerId: const MarkerId('Current Location'),
            position: myCurrentLocation),
        Marker(
            markerId: const MarkerId('Destination Location'),
            position: myDestinationLocation),
      },
    );
  }
}
