class Location {
  double? latitude;
  double? longitude;

  Location({this.latitude, this.longitude});

  void getCurrentLocation() {
    //Localización de ejemplo de San Francisco
    latitude = 37.7749;
    longitude = -122.4194;
  }
}
