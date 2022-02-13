import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sahaanubhooti/screens/HomeScreen.dart';
import 'package:sahaanubhooti/screens/edit_profile.dart';
import 'package:sahaanubhooti/screens/story_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 180.0,
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 25, 20, 20),
                  child: Text(
                    'Sahaanubhooti',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 32.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.home,
              color: Colors.deepPurple.shade700,
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.leaf,
              color: Colors.blueAccent.shade700,
            ),
            title: Text('Be a donor'),
            onTap: () {
              Navigator.of(context).pushNamed(EditProfile.routeName);
            },
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.shareAlt,
              color: Colors.pinkAccent.shade400,
            ),
            title: Text('Share your story'),
            onTap: () {
              Navigator.of(context).pushNamed(StoryScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
