import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'my_app_bar.dart';
import 'my_drawer.dart';

class DevelopmentWorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Text('Development work Content'),
      ),
    );
  }
}
