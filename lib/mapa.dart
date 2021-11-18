import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapa extends StatefulWidget {
  const Mapa({Key? key}) : super(key: key);

  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  Set<Marker> _markers = {};
  void_onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(13.723686917992234, -89.36779650812825),
          infoWindow: InfoWindow(
            title: 'Lourdes',
            snippet: 'Sucursal de Lourdes, La libertad',
          )));

      _markers.add(Marker(
          markerId: MarkerId('id-2'),
          position: LatLng(13.67839790554954, -89.2675639912306),
          infoWindow: InfoWindow(
            title: 'Ciudad Merliot',
            snippet: 'Sucursal de Ciudad Merliot, La libertad',
          )));

      _markers.add(Marker(
          markerId: MarkerId('id-3'),
          position: LatLng(13.675945411925415, -89.28947239947291),
          infoWindow: InfoWindow(
            title: 'Santa Tecla',
            snippet: 'Sucursal de Santa Tecla, La libertad',
          )));

      _markers.add(Marker(
          markerId: MarkerId('id-4'),
          position: LatLng(13.639418847769363, -88.78460825713115),
          infoWindow: InfoWindow(
            title: 'San Vicente',
            snippet: 'Sucursal de San Vicente',
          )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mapas de sucursales Z2'),
        ),
        body: GoogleMap(
            onMapCreated: void_onMapCreated,
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: LatLng(13.49630921044519, -89.33317323106999),
              zoom: 10,
            )));
  }
}
