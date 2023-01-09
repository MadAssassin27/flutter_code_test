import 'package:flutter/material.dart';

import '../widgets/clinics_grid.dart';
import 'clinic_list_screen.dart';

class ClinicOverviewScreen extends StatelessWidget {
  static const routeName = '/clinic-overview';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Clinic',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(ClinicListScreen.routeName);
                    },
                    child: Text(
                      'lihat semua',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: ClinicsGrid(),
          ),
        ),
      ],
    );
  }
}
