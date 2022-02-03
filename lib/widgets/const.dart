import 'package:flutter/material.dart';

Map<int, Color> colorMap = {
  50: Color.fromRGBO(44, 47, 80, .1),
  100: Color.fromRGBO(44, 47, 80, .2),
  200: Color.fromRGBO(44, 47, 80, .3),
  300: Color.fromRGBO(44, 47, 80, .4),
  400: Color.fromRGBO(44, 47, 80, .5),
  500: Color.fromRGBO(44, 47, 80, .6),
  600: Color.fromRGBO(44, 47, 80, .7),
  700: Color.fromRGBO(44, 47, 80, .8),
  800: Color.fromRGBO(44, 47, 80, .9),
  900: Color.fromRGBO(44, 47, 80, 1),
};
MaterialColor appThemeColor = MaterialColor(0xFF2C2F50, colorMap);
Color pagesColor = Color.fromARGB(255, 246, 241, 255);
Color themeColor = Color.fromRGBO(44, 47, 80, 1);
Color lightColor = Colors.purple;
Color darkFonts = Color.fromRGBO(20, 20, 20, 1);
Color whiteFonts = Color.fromRGBO(255, 255, 255, 1);
String baseURL = 'https://einnovention.co.uk/empnew/public/api';
String loginToken;
ush(BuildContext context, Widget widget) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

pushReplacement(BuildContext context, Widget widget) {
  return Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

Widget processLoading(BuildContext context, String message) {
  return AlertDialog(
    backgroundColor: Colors.white,
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            message,
            style: TextStyle(
              fontSize: 14.0,
              color: lightColor,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Please wait...',
            style: TextStyle(
              fontSize: 12.0,
              color: darkFonts,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ],
    ),
  );
}
