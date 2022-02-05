import 'dart:async';
import 'package:collegemate/widgets/my_detail_container.dart';
import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:collegemate/responsive/size_config.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

// changes to pull req

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
  // List<Marker> _markers = <Marker>[];
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
    // _markers.addAll(list);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            markers: Set<Marker>.of(list),
            // {_redMarker, _blueMarker},
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
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            maxChildSize: 0.5,
            minChildSize: 0.2,
            builder: (context, controller) {
              return SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: FloatingActionButton(
                          onPressed: () {
                            _goToPosition();
                          },
                          child: Icon(Icons.directions),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      // margin: EdgeInsets.symmetric(vertical: 20.0),
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: 'Booking for',
                              size: 20,
                              fontColor: Colors.grey,
                            ),
                            MyText(
                              text: 'Today, 08:30 -10:30 PM (2 hrs)',
                              fontColor: Colors.black,
                              size: 20,
                            ),
                            Expanded(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  SizedBox(width: 10.0),
                                  _boxes(
                                      // "https://lh5.googleusercontent.com/p/AF1QipO3VPL9m-b355xWeg4MXmOQTauFAEkavSluTtJU=w225-h160-k-no",
                                      "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",
                                      28.7251,
                                      77.1125,
                                      "Gramercy Tavern"),
                                  SizedBox(width: 10.0),
                                  _boxes(
                                      "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",
                                      28.7241,
                                      77.1025,
                                      "Le Bernardin"),
                                  SizedBox(width: 10.0),
                                  _boxes(
                                      // "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                                      "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",
                                      28.7331,
                                      77.1425,
                                      "Blue Hill"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _boxes(String _image, double lat, double long, String restaurantName) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat, long);
      },
      child: Container(
        height: 200,
        // width: 300,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 150,
              height: 170,
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(24.0),
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(_image),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: myDetailsContainer1(restaurantName),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _goToPosition() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_localPosition));
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(lat, long),
          zoom: 15,
          tilt: 50.0,
          bearing: 45.0,
        ),
      ),
    );
  }
}
