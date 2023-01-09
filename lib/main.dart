import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/home_screen.dart';
import './screens/hospital_overview_screen.dart';
import './screens/hospital_detail_screen.dart';
import './screens/hospital_list_screen.dart';
import './screens/clinic_detail_screen.dart';
import './screens/clinic_overview_screen.dart';
import './screens/clinic_list_screen.dart';
import './screens/auth_screen.dart';
import './providers/auth.dart';
import './providers/hospitals.dart';
import './providers/clinics.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

Future initialization(BuildContext context) async {
  await Future.delayed(Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProvider.value(
          value: Hospitals(),
        ),
        ChangeNotifierProvider.value(
          value: Clinics(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: 'Clinics and Hospitals',
          theme: ThemeData(
            primaryColor: Colors.blue,
            fontFamily: 'Lato',
          ),
          home: auth.isAuth ? HomeScreen() : AuthScreen(),
          routes: {
            HomeScreen.routeName: (ctx) => HomeScreen(),
            HospitalDetailScreen.routeName: (ctx) => HospitalDetailScreen(),
            ClinicDetailScreen.routeName: (ctx) => ClinicDetailScreen(),
            HospitalOverviewScreen.routeName: (ctx) => HospitalOverviewScreen(),
            ClinicOverviewScreen.routeName: (ctx) => ClinicOverviewScreen(),
            HospitalListScreen.routeName: (ctx) => HospitalListScreen(),
            ClinicListScreen.routeName: (ctx) => ClinicListScreen(),
          },
        ),
      ),
    );
  }
}
