import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './clinic_item.dart';
import '../providers/clinics.dart';

class ClinicsGrid extends StatefulWidget {
  @override
  _ClinicsGridState createState() => _ClinicsGridState();
}

class _ClinicsGridState extends State<ClinicsGrid> {
  var _sort = 'semua';

  @override
  Widget build(BuildContext context) {
    var clinicsData = Provider.of<Clinics>(context);
    final clinics = clinicsData.items;
    final sortedClinics =
        clinics.where((hos) => hos.sort.any((sort) => sort == _sort)).toList();
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Row(
            children: [
              OutlinedButton.icon(
                icon: RotatedBox(
                  quarterTurns: 1,
                ),
                onPressed: () => setState(() => _sort = 'semua'),
                label: Text(
                  ' SEMUA ',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              OutlinedButton.icon(
                icon: RotatedBox(
                  quarterTurns: 1,
                ),
                onPressed: () => setState(() => _sort = 'bpjs'),
                label: Text(
                  '  BPJS  ',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              OutlinedButton.icon(
                icon: RotatedBox(
                  quarterTurns: 1,
                ),
                onPressed: () => setState(() => _sort = 'partner'),
                label: Text(
                  'PARTNER',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              OutlinedButton.icon(
                icon: RotatedBox(
                  quarterTurns: 1,
                ),
                onPressed: () => setState(() => _sort = 'terdekat'),
                label: Text(
                  'TERDEKAT',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          child: Container(
            margin: EdgeInsets.all(0.0),
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0.0),
              itemCount: sortedClinics.length,
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 1,
              //   childAspectRatio: 6 / 1,
              //   crossAxisSpacing: 10,
              //   mainAxisSpacing: 10,
              // ),
              itemBuilder: (ctx, i) => ClinicItem(
                  sortedClinics[i].id,
                  sortedClinics[i].name,
                  sortedClinics[i].address,
                  sortedClinics[i].imageUrl),
            ),
          ),
        ),
      ],
    );
  }
}
