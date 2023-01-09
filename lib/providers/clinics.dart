import 'package:flutter/foundation.dart';

import '../models/clinic.dart';

class Clinics with ChangeNotifier {
  List<Clinic> _items = [
    Clinic(
      id: 'k1',
      name: 'Klinik Sophia Medika Depok',
      address: 'Jl. Mampang Indah I No.20',
      phone: '(021) 77806127',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/819/819235.png',
      sort: ['semua', 'terdekat'],
    ),
    Clinic(
      id: 'k2',
      name: 'Klinik Depok 2000',
      address: 'JL. Mergonda Raya, Blok A/1',
      phone: '(021) 77200217',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/819/819235.png',
      sort: ['semua', 'partner'],
    ),
    Clinic(
      id: 'k3',
      name: 'Klinik Ismail Medika',
      address: 'JL. Caringin No. 3B',
      phone: '(021) 77889269',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/819/819235.png',
      sort: ['semua', 'bpjs'],
    ),
    Clinic(
      id: 'k4',
      name: 'Klinik Sawangan Medika 24 Jam',
      address: 'Jl. Raya Sawangan No.3',
      phone: '(021) 29315685',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/819/819235.png',
      sort: ['semua', 'bpjs', 'partner'],
    ),
  ];

  List<Clinic> get items {
    return [..._items];
  }

  Clinic findById(String id) {
    return _items.firstWhere((cli) => cli.id == id);
  }

  void addClinic() {
    // _items.add(value);
    notifyListeners();
  }
}
