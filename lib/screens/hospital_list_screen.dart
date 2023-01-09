import 'package:flutter/material.dart';

import '../widgets/hospitals_grid.dart';

class HospitalListScreen extends StatelessWidget {
  static const routeName = '/hospital-list';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      appBar: AppBar(title: Text('Hospitals')),
      body: HospitalsGrid(),
    );
  }
}
