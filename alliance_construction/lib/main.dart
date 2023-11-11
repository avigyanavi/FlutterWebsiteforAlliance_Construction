import 'package:flutter/material.dart';
import 'my_app_bar.dart';
import 'my_drawer.dart';
import 'about_page.dart';
import 'construction_page.dart';
import 'developmentwork_page.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    routes: {
      '/home': (context) => MyApp(),
      '/about': (context) => AboutPage(),
      '/construction': (context) => ConstructionPage(),
      '/development': (context) => DevelopmentWorkPage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

Future<void> _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _MyAppState extends State<MyApp> {
  final TextStyle _bodytextstyle =
      const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  var callUsButtonPadding = MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 50, vertical: 25));
  var emailUsButtonPadding = MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 50, vertical: 25));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: MediaQuery.of(context).size.width > 720
            ? MyAppBar()
            : AppBar(
                title: Row(
                  children: [
                    Image.asset(
                      'images/maepl.jpg',
                      height: 40,
                    ),
                    SizedBox(width: 10),
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
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                'Welcome to Alliance Construction',
                style: _bodytextstyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  'We are a team of highly skilled and experienced professionals who are dedicated to providing the best quality construction services to our clients. We have been in the construction industry for over 34 years and have completed many projects successfully for big names such as Peerless, Alcove, Bengal Shelter, Vedanta, etc.',
                  overflow: TextOverflow.visible,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  'Our team is committed to providing you with the best service possible. We offer a wide range of services including residential, commercial, industrial, and house remodeling. If you are looking for a reliable construction company that will provide you with high-quality work at affordable prices, then look no further than Alliance Construction! Contact us today for more information about our services.',
                  overflow: TextOverflow.visible,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          callUsButtonPadding = MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 30));
                        });
                      }
                    },
                    style: ButtonStyle(
                      padding: callUsButtonPadding,
                      overlayColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.8)),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.7)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                    ),
                    onPressed: () {
                      _launchURL('tel:+919831103666');
                    },
                    child: const Text('Call Us',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ),
                  ElevatedButton(
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          emailUsButtonPadding = MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 30));
                        });
                      }
                    },
                    style: ButtonStyle(
                      padding: emailUsButtonPadding,
                      overlayColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.8)),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.black.withOpacity(0.7)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                    ),
                    onPressed: () {
                      _launchURL(
                          'mailto:allianceconstruction3123@gmail.com?subject=Inquiry');
                    },
                    child: const Text('Email Us',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ],
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
