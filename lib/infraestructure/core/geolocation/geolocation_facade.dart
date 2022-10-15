import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

abstract class IGeolocationFacade {
  // ignore: unused_element
  Future<bool> _enableService();
  // ignore: unused_element
  Future<void> _requestPermission();
  bool isPermissionEnabled();
  Future<Position> getPosition();
  Future<bool> start();
}

@LazySingleton(as: IGeolocationFacade)
class GeolocationFacade implements IGeolocationFacade {
  bool _serviceEnabled = false;
  late LocationPermission _permission = LocationPermission.denied;

  @override
  Future<bool> _enableService() async {
    _serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!_serviceEnabled) {
      return Future.error('Geolocation service are disabled');
    }
    return Future.sync(() => true);
  }

  @override
  Future<void> _requestPermission() async {
    _permission = await Geolocator.checkPermission();
    if (_permission == LocationPermission.denied) {
      _permission = await Geolocator.requestPermission();
    }
    return Future.sync(() => null);
  }

  @override
  Future<Position> getPosition() async {
    return Geolocator.getCurrentPosition();
  }

  @override
  bool isPermissionEnabled() {
    if (_permission == LocationPermission.denied ||
        _permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }

  @override
  Future<bool> start() async {
    final enabled = await _enableService();
    if (enabled) {
      await _requestPermission();
      return Future.sync(() => true);
    }
    return Future.sync(() => false);
  }
}
