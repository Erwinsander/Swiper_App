import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart'
    show Swiper, SwiperControl, SwiperPagination;

void main() => runApp(swiper_App());

class swiper_App extends StatefulWidget {
  const swiper_App({Key? key}) : super(key: key);

  @override
  State<swiper_App> createState() => _swiper_AppState();
}

class _swiper_AppState extends State<swiper_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Swiper App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Swiper App"),
        ),
        body: Container(
          child: _swiper(),
        ),
      ),
    );
  }

  Widget _swiper() {
    return Center(
      child: Container(
        width: double.infinity,
        height: 250.0,
        child: Swiper(
          viewportFraction: 0.8,
          scale: 0.9,
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              images[index],
              fit: BoxFit.fill,
            );
          },
          itemCount: images.length,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ),
      ),
    );
  }

  List<String> images = [
    "https://astelus.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada-1152x759.jpg",
    "https://astelus.com/wp-content/viajes/una-laguna-unica-en-jamaica-650x366.jpg",
    "https://astelus.com/wp-content/viajes/los-arrecifes-de-coral-de-bunaken-indonesia-650x366.jpg",
    "https://astelus.com/wp-content/viajes/cenote-ik-kil-yucatan-mexico-650x366.jpg",
    "https://astelus.com/wp-content/viajes/paisajes-del-campo-arboles-650x366.jpg.webp",
    "https://astelus.com/wp-content/viajes/las-asombrosas-vistas-en-zhangjiajie-china-650x366.jpg",
    "https://astelus.com/wp-content/viajes/La-isla-del-santuario-en-Japon-650x366.jpg.webp",
    "https://astelus.com/wp-content/viajes/kauai-una-isla-de-pelicula-en-hawai-650x366.jpg.webp",
    "https://astelus.com/wp-content/viajes/glaciar-perito-moreno-un-paisaje-congelado-en-argentina-650x366.jpg",
  ];
}
