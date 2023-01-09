import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/hospitals.dart';

class HospitalDetailScreen extends StatelessWidget {
  // final String name;

  // HospitalDetailScreen(this.name);
  static const routeName = '/hospital-detail';

  @override
  Widget build(BuildContext context) {
    final hospitalId = ModalRoute.of(context).settings.arguments as String;
    final loadedHospital = Provider.of<Hospitals>(
      context,
      listen: false,
    ).findById(hospitalId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedHospital.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                loadedHospital.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedHospital.address,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedHospital.phone,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
