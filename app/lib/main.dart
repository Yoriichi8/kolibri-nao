import 'package:flutter/material.dart';
import 'package:kolibri/ui/home.dart';

// Color Scheme.
const color01 = Color(0xFFDE00FF);
const color02 = Color(0xFFF8A6CD);
const color03 = Color(0xFFFFC900);

const double pagesPadding = 14;

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      // Theming the app bar and setting its font.
      appBarTheme: const AppBarTheme().copyWith(
        titleTextStyle: const TextStyle(
          fontFamily: "CorporateS",
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      // Setting the default fonts.
      textTheme: const TextTheme().copyWith(
        bodyText1: const TextStyle(fontFamily: "Halyard", fontSize: 18),
        bodyText2: const TextStyle(fontFamily: "Halyard", fontSize: 18),
      ),
      // Theming the rest of the app.
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: color01,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      scaffoldBackgroundColor: color02,
      // Theming button.
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontFamily: "Halyard",
            ),
            primary: color03,
            onPrimary: Colors.black,
            elevation: 0,
            side: const BorderSide(
              color: Colors.black,
              style: BorderStyle.solid,
              width: 1.85,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            visualDensity: const VisualDensity(
              horizontal: VisualDensity.maximumDensity,
              vertical: VisualDensity.maximumDensity,
            )),
      ),
    ),
    // Setting the app title and telling Flutter what's the Home class.
    title: "Kolibri App",
    home: const Home(),
  ));
}

SnackBar generateSnackbar(String message) {
  Widget snackContent = Text(
    message,
    style: const TextStyle(fontFamily: "Halyard", color: Colors.black),
  );
  SnackBar snackbar = SnackBar(
    content: snackContent,
    behavior: SnackBarBehavior.floating,
    backgroundColor: color01,
    elevation: 0,
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(width: 2, color: Colors.black)),
  );

  return snackbar;
}
