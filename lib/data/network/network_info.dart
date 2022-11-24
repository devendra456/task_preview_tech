import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> isConnected();
  Stream<ConnectivityResult> connectivitySubscription();
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl(this.connectivity);

  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    switch (result) {
      case ConnectivityResult.bluetooth:
        return false;
      case ConnectivityResult.wifi:
        return true;
      case ConnectivityResult.ethernet:
        return false;
      case ConnectivityResult.mobile:
        return true;
      case ConnectivityResult.none:
        return false;
      case ConnectivityResult.vpn:
       return false;
    }
  }

  @override
  Stream<ConnectivityResult> connectivitySubscription() {
    return connectivity.onConnectivityChanged;
  }
}
