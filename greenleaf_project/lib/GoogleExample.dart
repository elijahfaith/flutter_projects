import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMapScreen extends StatelessWidget {
  const MyMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LatLng myCurrentLocation = const LatLng(6.4667, 3.4500); // Example coordinates

    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps Example'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: myCurrentLocation,
          zoom: 12.0,
        ),
        // Add other GoogleMap properties if needed
      ),
    );
  }
}
