import 'package:flutter/material.dart';

import '../widgets/hospitals_grid.dart';
import 'hospital_list_screen.dart';

class HospitalOverviewScreen extends StatelessWidget {
  static const routeName = '/hospital-overview';
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
                'Hospital',
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
                          .pushNamed(HospitalListScreen.routeName);
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
            body: HospitalsGrid(),
          ),
        ),
      ],
    );
  }
}
