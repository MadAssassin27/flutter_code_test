import 'package:flutter/material.dart';

import '../screens/Clinic_detail_screen.dart';
import '../models/clinic.dart';

class ClinicItem extends StatelessWidget {
  final String id;
  final String name;
  final String address;
  final String imageUrl;

  ClinicItem(this.id, this.name, this.address, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        leading: CircleAvatar(
          child: Image.network(
            imageUrl,
            width: 25,
            height: 25,
          ),
        ),
        title: Text(
          name,
          textAlign: TextAlign.left,
        ),
        subtitle: Text(
          address,
          textAlign: TextAlign.left,
        ),
        trailing: const Text(
          'lihat detail',
          style: TextStyle(
            color: Color.fromARGB(255, 54, 198, 255),
          ),
        ),
        onTap: () {
          Navigator.of(context)
              .pushNamed(ClinicDetailScreen.routeName, arguments: id);
        },
      ),
    );
  }
}
