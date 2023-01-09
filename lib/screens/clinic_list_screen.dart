import 'package:flutter/material.dart';

import '../widgets/clinics_grid.dart';

class ClinicListScreen extends StatelessWidget {
  static const routeName = '/clinic-list';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      appBar: AppBar(title: Text('Clinics')),
      body: ClinicsGrid(),
    );
  }
}
