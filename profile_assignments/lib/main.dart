import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Profile',
      home: Scaffold(
        body: ProfileWidget(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        height: 500,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://lh3.googleusercontent.com/a/ACg8ocJzKv5pMj-tyA7Wo1H5uRv-X0qg-VdkttmALfOwhaG8aJpLaM1PkA=s360-c-no'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              height: 100,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 0),
              child: buildText(
                "Etienne BELEMGNEGRE",
                fontWeightValue: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2, bottom: 10),
              child: buildText(
                "FULLSTACK DEVELOPER",
                fontSizeValue: 16,
                colorValue: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildPaddingIcons(FontAwesomeIcons.twitter, Colors.blue),
                buildPaddingIcons(FontAwesomeIcons.pinterest, Colors.grey),
                buildPaddingIcons(FontAwesomeIcons.linkedinIn, Colors.grey),
                buildPaddingIcons(FontAwesomeIcons.facebook, Colors.grey),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        buildText(
                          "240",
                          fontWeightValue: FontWeight.bold,
                        ),
                        buildText(
                          "FOLLOWING",
                          fontSizeValue: 13.0,
                          colorValue: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        buildText(
                          "24K",
                          fontWeightValue: FontWeight.bold,
                        ),
                        buildText(
                          "FOLLOWER",
                          fontSizeValue: 13.0,
                          colorValue: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              // alignment: AlignmentGeometry(),
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://lh3.googleusercontent.com/a/ACg8ocJzKv5pMj-tyA7Wo1H5uRv-X0qg-VdkttmALfOwhaG8aJpLaM1PkA=s360-c-no'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 50,
                  width: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://lh3.googleusercontent.com/a/ACg8ocJzKv5pMj-tyA7Wo1H5uRv-X0qg-VdkttmALfOwhaG8aJpLaM1PkA=s360-c-no'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 50,
                  width: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildPaddingIcons(iconName, iconColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        iconName,
        size: 30.0, // Customize the size
        color: iconColor, // Customize the color
      ),
    );
  }

  Widget buildText(
    String value, {
    double fontSizeValue = 20,
    FontWeight fontWeightValue = FontWeight.normal,
    Color colorValue = Colors.black,
  }) {
    return Text(
      value,
      style: TextStyle(
          fontSize: fontSizeValue,
          fontWeight: fontWeightValue,
          color: colorValue),
    );
  }
}
