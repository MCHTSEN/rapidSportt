// import 'package:flutter/material.dart';
// import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

// class Osm extends StatefulWidget {
//   final Widget children;
//   const Osm({super.key, required this.children});

//   @override
//   State<Osm> createState() => _OsmState();
// }

// class _OsmState extends State<Osm> {


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       child: 
//         OSMFlutter(

//             controller: MapController.withUserPosition(
//               trackUserLocation: const UserTrackingOption(
//               enableTracking: true,
//               unFollowUser: false,

//             )),
//             osmOption: OSMOption(
//               userTrackingOption: const UserTrackingOption(
//                 enableTracking: false,
//                 unFollowUser: false,
//               ),
//               zoomOption: const ZoomOption(
//                 initZoom: 8,
//                 minZoomLevel: 3,
//                 maxZoomLevel: 19,
//                 stepZoom: 1.0,

//               ),
//               userLocationMarker: UserLocationMaker(
//                 personMarker: const MarkerIcon(
//                   icon: Icon(
//                     Icons.location_history_rounded,
//                     color: Colors.red,
//                     size: 48,
//                   ),
//                 ),
//                 directionArrowMarker: const MarkerIcon(
//                   icon: Icon(
//                     Icons.double_arrow,
//                     size: 48,
//                   ),
//                 ),
//               ),
//               roadConfiguration: const RoadOption(
//                 roadColor: Colors.yellowAccent,
//               ),
// markerOption: MarkerOption(
//                   defaultMarker: const MarkerIcon(
//                 icon: Icon(
//                   Icons.person_pin_circle,
//                   color: Colors.blue,
//                   size: 56,
//                 ),
//               )),
//             ),
//             ),
      
//     );
//   }
// }