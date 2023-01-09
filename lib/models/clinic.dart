import 'package:flutter/foundation.dart';

class Clinic {
  final String id;
  final String name;
  final String address;
  final String phone;
  final String imageUrl;
  final List<String> sort;

  Clinic({
    @required this.id,
    @required this.name,
    @required this.address,
    @required this.phone,
    @required this.imageUrl,
    @required this.sort,
  });
}
