import 'package:flutter/foundation.dart';

class Hospital {
  final String id;
  final String name;
  final String address;
  final String phone;
  final String imageUrl;
  final List<String> sort;

  Hospital({
    @required this.id,
    @required this.name,
    @required this.address,
    @required this.phone,
    @required this.imageUrl,
    @required this.sort,
  });
}
