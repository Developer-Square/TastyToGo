import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _buttonText = 'NEXT';
  String get buttonText => _buttonText;
  set buttonText(String _value) {
    _buttonText = _value;
  }

  String _paymentMethod = 'cash';
  String get paymentMethod => _paymentMethod;
  set paymentMethod(String _value) {
    _paymentMethod = _value;
  }

  bool _openOrderTrackInfo = false;
  bool get openOrderTrackInfo => _openOrderTrackInfo;
  set openOrderTrackInfo(bool _value) {
    _openOrderTrackInfo = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
