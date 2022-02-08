import 'dart:async';
import 'package:collegemate/models/cafeteria_dummy_data.dart';
import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:collegemate/responsive/size_config.dart';

import 'restaurent_detail_page.dart';

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
                          child: Icon(Icons.navigation),
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
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: cafeData.length,
                                  itemBuilder: (context, index) {
                                    final data = cafeData[index];
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return RestaurentDetailPage(
                                            name: data.name,
                                            image: data.image,
                                            rating: data.rating,
                                            timing: data.timing,
                                            distance: data.distance,
                                            address: data.address!,
                                          );
                                        }));
                                      },
                                      child: Container(
                                        height: 160,
                                        width: 300,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              width: 120,
                                              height: 150,
                                              child: ClipRRect(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        16.0),
                                                child: Image(
                                                  fit: BoxFit.fill,
                                                  image:
                                                      NetworkImage(data.image),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10, left: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  MyText(
                                                    text: data.name,
                                                    size: 24,
                                                    fontColor:
                                                        Color(0xff6200ee),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  MyText(
                                                    text: data.rating,
                                                    fontColor: Colors.black,
                                                    size: 16,
                                                  ),
                                                  MyText(
                                                    text: data.distance,
                                                    fontColor: Colors.black54,
                                                    size: 20,
                                                  ),
                                                  MyText(
                                                    text: data.timing,
                                                    fontColor: Colors.black54,
                                                    size: 20,
                                                    // fontWeight: FontWeight.w400,
                                                  ),
                                                  // SizedBox(
                                                  //   height: 5,
                                                  // ),
                                                  SizedBox(
                                                    height: 26,
                                                    width: 150,
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        print('object');
                                                      },
                                                      child: MyText(
                                                        text: 'Click Me'
                                                            .toUpperCase(),
                                                        size: 16,
                                                        fontColor: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
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

  Future<void> _goToPosition() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_localPosition));
  }
}
