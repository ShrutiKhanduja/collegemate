import 'dart:async';
import 'package:collegemate/models/cafeteria_dummy_data.dart';
import 'package:collegemate/widgets/bottom_sheet_widget.dart';
import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:collegemate/responsive/size_config.dart';

import 'restaurent_detail_page.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static const _intialCameraPostion =
      CameraPosition(target: LatLng(28.7041, 77.1095), zoom: 13);

  static final CameraPosition _localPosition =
      CameraPosition(target: LatLng(19.0760, 72.8777), zoom: 13);
  static final Polyline _kPolyline = Polyline(
      polylineId: PolylineId('_kPolyline'),
      points: [
        LatLng(28.7041, 77.1025),
        LatLng(28.7241, 77.1225),
      ],
      width: 3);

  // Set<Marker> _markers = {};
  Marker sourceMarker = Marker(
    markerId: MarkerId('red marker'),
    position: LatLng(28.7041, 77.1025),
    infoWindow: InfoWindow(title: 'Business 1'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
  );
  Marker destinationMarker = Marker(
    markerId: MarkerId('blue marker'),
    position: LatLng(28.7241, 77.1225),
    infoWindow: InfoWindow(title: 'Business 2'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
  );
  Marker gramercyMarker = Marker(
    markerId: MarkerId('gramercy'),
    position: LatLng(28.7251, 77.1125),
    infoWindow: InfoWindow(title: 'Gramercy Tavern'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueCyan,
    ),
  );

  Marker bernardinMarker = Marker(
    markerId: MarkerId('bernardin'),
    position: LatLng(28.7241, 77.1025),
    infoWindow: InfoWindow(title: 'Le Bernardin'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueViolet,
    ),
  );
  Marker blueMarker = Marker(
    markerId: MarkerId('bluehill'),
    position: LatLng(28.7331, 77.1425),
    infoWindow: InfoWindow(title: 'Blue Hill'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueMagenta,
    ),
  );
  List<Marker> list = [];
  @override
  void initState() {
    list = [
      sourceMarker,
      destinationMarker,
      gramercyMarker,
      bernardinMarker,
      blueMarker
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            markers: Set<Marker>.of(list),
            polylines: {_kPolyline},
            zoomControlsEnabled: false,
            initialCameraPosition: _intialCameraPostion,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          SafeArea(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          BottomSheetWidget()
        ],
      ),
    );
  }

  Future<void> _goToPosition() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_localPosition));
  }
}
