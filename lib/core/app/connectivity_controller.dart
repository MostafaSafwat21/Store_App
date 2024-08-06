import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

class ConnectivityController {
  ConnectivityController._();

  static final ConnectivityController instance = ConnectivityController._();

  ValueNotifier<bool> isConnected = ValueNotifier(true);

  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    _updateConnectivityStatus(result);
    Connectivity().onConnectivityChanged.listen(_updateConnectivityStatus);
  }

  void _updateConnectivityStatus(ConnectivityResult result) {
    bool connected = isInternetConnected(result);
    if (isConnected.value != connected) {
      isConnected.value = connected;
    }
  }

  bool isInternetConnected(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      return false;
    } else if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
}
