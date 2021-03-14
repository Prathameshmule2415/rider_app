import 'package:flutter/cupertino.dart';
import 'package:rider_app/Models/address.dart';

class AppData extends ChangeNotifier {
  Address PickUpLocation;
  void updatePickUpLocationAddress(Address pickupAddress) {
    PickUpLocation = pickupAddress;
    notifyListeners();
  }
}
