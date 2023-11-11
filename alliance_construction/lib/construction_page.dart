import 'package:flutter/material.dart';
import 'my_app_bar.dart';
import 'my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class ConstructionPage extends StatelessWidget {
  final List<String> imageNames = [
    'Sumukh',
    'Surer Math Auditorium',
    'Brindavan Gardens',
    'Bhoomi IV',
    'Club Town Greens',
    'Greentech IT City',
    'IRCON Building',
    'Institute of Liver Science',
    'Peerless Dikbalika',
    'Peerless Destination Mall',
    'Maurya Apartments',
    'Saakar',
    'Shiv Temple',
    'Siddharth',
    'Sarosi Complex',
    'Industrial Construction at Bhadrak for Ferrochrome Plant',
    'Mr. Arindam Mukherjee',
  ];

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MediaQuery.of(context).size.width > 720
            ? MyAppBar()
            : AppBar(
                title: Row(
                  children: [
                    Image.asset(
                      'images/maepl.jpg',
                      height: 40,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Alliance Construction',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
              ),
      ),
      drawer: MediaQuery.of(context).size.width > 720 ? null : MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Construction Projects:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: imageNames.map((imageName) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/$imageName',
                          height: MediaQuery.of(context).size.width /
                              2, // Adjust the height as needed
                          width: MediaQuery.of(context).size.width /
                              2, // Adjust the width as needed
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 20),
                        Text(
                          '$imageName',
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      // Use the bottomNavigationBar property
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () {
            _launchURL('https://www.minfotec.online/');
          },
          child: const Text(
            'Copyright 2009, Alliance Construction, All Rights Reserved. Developed By Mukherjee Alliances Infotech Private Limited',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
