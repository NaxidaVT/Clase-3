import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _textoFecha = 'Fecha de Imagen';
  String get textoFecha => _textoFecha;
  set textoFecha(String value) {
    _textoFecha = value;
  }

  String _imagenNasa =
      'https://www.shorekids.co.nz/wp-content/\nuploads/2014/08/image-placeholder.jpg';
  String get imagenNasa => _imagenNasa;
  set imagenNasa(String value) {
    _imagenNasa = value;
  }
}
