import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sahaanubhooti/constants/color_constants.dart';
import 'package:sahaanubhooti/providers/information.dart';
import 'package:sahaanubhooti/providers/users.dart';
import 'package:sahaanubhooti/screens/BannerScreen.dart';
import 'package:sahaanubhooti/screens/HomeScreen.dart';
import 'package:sahaanubhooti/screens/edit_profile.dart';
import 'package:sahaanubhooti/screens/story_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Information(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme:
            ThemeData(primaryColor: kPrimaryColor, accentColor: kAccentColor),
        home: BannerScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
          BannerScreen.routeName: (ctx) => BannerScreen(),
          EditProfile.routeName: (ctx) => EditProfile(),
          StoryScreen.routeName: (ctx) => StoryScreen()
        },
      ),
    );
  }
}
