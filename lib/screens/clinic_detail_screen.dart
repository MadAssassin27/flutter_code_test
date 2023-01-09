import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/clinics.dart';

class ClinicDetailScreen extends StatelessWidget {
  // final String name;

  // ClinicDetailScreen(this.name);
  static const routeName = '/clinic-detail';

  @override
  Widget build(BuildContext context) {
    final clinicId = ModalRoute.of(context).settings.arguments as String;
    final loadedClinic = Provider.of<Clinics>(
      context,
      listen: false,
    ).findById(clinicId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedClinic.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                loadedClinic.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedClinic.address,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedClinic.phone,
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
