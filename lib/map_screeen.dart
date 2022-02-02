import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static const _intialCameraPostion =
      CameraPosition(target: LatLng(28.7041, 77.1025), zoom: 12);

  static final CameraPosition _localPosition =
      CameraPosition(target: LatLng(19.0760, 72.8777), zoom: 12);

  // static final Marker _redMarker = Marker(
  //   markerId: MarkerId("_intialCameraPostion"),
  //   infoWindow: InfoWindow(title: 'red marker'),
  //   icon: BitmapDescriptor.defaultMarker,
  //   position: LatLng(28.7341, 77.1025),
  // );
  // static final Marker _blueMarker = Marker(
  //   markerId: MarkerId("_intialCameraPostion"),
  //   infoWindow: InfoWindow(title: 'blue marker'),
  //   icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
  //   position: LatLng(28.7041, 77.1125),
  // );

  static final Polyline _kPolyline = Polyline(
      polylineId: PolylineId('_kPolyline'),
      points: [
        LatLng(28.7341, 77.1025),
        LatLng(28.7041, 77.1125),
      ],
      width: 3);

  // Set<Marker> _markers = {};
  Marker marker1 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(32.195476, 74.2023563),
    infoWindow: InfoWindow(title: 'Business 1'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
  );
  Marker marker2 = Marker(
    markerId: MarkerId('Marker2'),
    position: LatLng(32.110484, 74.224598),
    infoWindow: InfoWindow(title: 'Business 2'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
  );
  // List<Marker> _markers = <Marker>[];
  List<Marker> list = [];
  @override
  void initState() {
    list = [marker1, marker2];
    // _markers.addAll(list);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: GoogleMap(
        myLocationButtonEnabled: false,
        markers: Set<Marker>.of(list),
        // {_redMarker, _blueMarker},
        polylines: {_kPolyline},
        zoomControlsEnabled: false,
        initialCameraPosition: CameraPosition(
          target: LatLng(32.1749132, 74.1779387),
          zoom: 11.0,
        ),
        // _intialCameraPostion,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('new location');
          _goToPosition();
        },
        child: Icon(Icons.directions),
      ),
    );
  }

  Future<void> _goToPosition() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_localPosition));
  }
}
