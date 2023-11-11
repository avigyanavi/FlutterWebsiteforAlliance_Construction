import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppBar extends StatefulWidget {
  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  void _navigateToPage(BuildContext context, String page) {
    Navigator.pushNamed(context, '/$page');
  }

  void _navigateToHome(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Wrap Alliance Construction text in a TextButton
          TextButton(
            onPressed: () {
              _navigateToHome(context);
            },
            child: Row(
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
          MediaQuery.of(context).size.width > 720
              ? Row(
                  children: [
                    NavButton('About',
                        onTap: () => _navigateToPage(context, 'about')),
                    NavButton('Construction',
                        onTap: () => _navigateToPage(context, 'construction')),
                    NavButton('Consultancy', url: 'https://www.maepl.in/'),
                    NavButton('Development Work',
                        onTap: () => _navigateToPage(context, 'development')),
                  ],
                )
              : IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    _showDrawer(context);
                  },
                ),
        ],
      ),
    );
  }

  void _showDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}

class NavButton extends StatelessWidget {
  final String text;
  final String? url;
  final VoidCallback? onTap;

  NavButton(this.text, {this.url, this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (url != null) {
          _launchURL(url!);
        } else if (onTap != null) {
          onTap!();
        }
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
