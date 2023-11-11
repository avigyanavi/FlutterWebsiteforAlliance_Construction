import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('About'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            title: Text('Construction'),
            onTap: () {
              Navigator.pushNamed(context, '/construction');
            },
          ),
          ListTile(
            title: Text('Consultancy'),
            onTap: () {
              _launchURL('https://www.maepl.in/');
            },
          ),
          ListTile(
            title: Text('Development Work'),
            onTap: () {
              Navigator.pushNamed(context, '/development');
            },
          ),
        ],
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
