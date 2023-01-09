import 'package:flutter/foundation.dart';

import '../models/hospital.dart';

class Hospitals with ChangeNotifier {
  List<Hospital> _items = [
    Hospital(
      id: 'rs1',
      name: 'RSUD Kota Depok',
      address: 'Jl. Muhtar No.99',
      phone: '(0251) 8602514',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/33/33777.png',
      sort: ['semua', 'terdekat', 'bpjs', 'partner'],
    ),
    Hospital(
      id: 'rs2',
      name: 'Mitra Keluarga Depok',
      address: 'Jl. Margonda Raya',
      phone: '(021) 77210700',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/33/33777.png',
      sort: ['semua', 'bpjs'],
    ),
    Hospital(
      id: 'rs3',
      name: 'RSU Hermina Depok',
      address: 'Jl. Siliwangi No.50',
      phone: '1 500 488',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/33/33777.png',
      sort: ['semua', 'partner'],
    ),
    Hospital(
      id: 'rs4',
      name: 'RSU Bhakti Yudha',
      address: 'Jl. Raya Sawangan No.2A',
      phone: '(021) 7520082)',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/33/33777.png',
      sort: ['semua'],
    ),
  ];

  List<Hospital> get items {
    return [..._items];
  }

  Hospital findById(String id) {
    return _items.firstWhere((hos) => hos.id == id);
  }

  void addHospital() {
    // _items.add(value);
    notifyListeners();
  }
}
