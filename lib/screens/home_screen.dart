import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'clinic_overview_screen.dart';
import 'clinic_list_screen.dart';
import 'hospital_overview_screen.dart';
import 'hospital_list_screen.dart';

List<String> titles = <String>[
  'LABEL1',
  'LABEL2',
];

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 2;
    Widget child;
    switch (_index) {
      case 0:
        child = Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              child: HospitalOverviewScreen(),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 50.0),
              items: [
                1,
                2,
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        // height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 187, 255)),
                        child: Text(
                          'BANNER $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              child: ClinicOverviewScreen(),
            ),
          ],
        );
        break;
      case 1:
        child = HospitalListScreen();
        break;
      case 2:
        child = ClinicListScreen();
        break;
      case 3:
        child = FlutterLogo();
        break;
    }
    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Valbury',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.menu,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                )),
          ],
          bottom: TabBar(
            labelColor: Color.fromARGB(255, 0, 0, 0),
            tabs: <Widget>[
              Tab(
                text: titles[0],
              ),
              Tab(
                text: titles[1],
              ),
            ],
          ),
        ),
        body: (child),
        bottomNavigationBar: BottomNavigationBar(
          // fixedColor: Color.fromARGB(255, 0, 37, 90),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital),
              label: 'RS',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital_outlined),
              label: 'KLINIK',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'PROFILE',
            ),
          ],
          currentIndex: _index,
          selectedItemColor: Color.fromARGB(255, 0, 37, 90),
          unselectedItemColor: Color.fromARGB(255, 0, 106, 255),
          onTap: (newIndex) => setState(() => _index = newIndex),
        ),
      ),
    );
  }
}
