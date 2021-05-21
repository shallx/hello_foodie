// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/diagnostics.dart';
// import 'package:flutter/src/cupertino/theme.dart';
// import 'package:foodpanda/shared/constant.dart';


// class CLThemeData {
//   CLThemeData();

//   ThemeData light() {
//     ThemeData td = ThemeData.light();
//     ColorPalette c = ColorPalette.light();

//     return ThemeData(
//       scaffoldBackgroundColor: c.scaffold,
//       iconTheme: IconThemeData(
//         color: c.secondary,
//       ), // Just Icon and IconButton
//       colorScheme: ColorScheme(
//         primary: c.primary, // Elevated Button Background,
//         //TextButton's child's text/icon color,outlinedbutton's
//         //child's text/icon color
//         onPrimary: c.onPrimary, // Elevated Buttons innerText color
//         primaryVariant: Colors.orange,
//         background: c.background,
//         onBackground: Colors.black,
//         secondary: c.secondary,
//         onSecondary: c.onSecondary,
//         secondaryVariant: Colors.deepOrange,
//         error: c.error,
//         onError: c.onError,
//         surface: Colors.white,
//         onSurface: Colors.black,
//         brightness: Brightness.light,
//       ),
//       appBarTheme: AppBarTheme(
//         backgroundColor: c.primary,
//         actionsIconTheme: IconThemeData(color: c.onPrimary),
//         iconTheme: IconThemeData(
//           color: c.onPrimary, // Leading Widget's Color
//         ),
//         textTheme: TextTheme(
//           headline6: TextStyle(
//             color: c.onPrimary,
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         elevation: 2,
//       ),
//       textTheme: TextTheme(
//         headline6: TextStyle(
//           color: Colors.red,
//         ),
//         bodyText2: TextStyle(
//           color: Colors.red,
//         ),
//       ),
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//         backgroundColor: c.primary,
//         foregroundColor: c.onPrimary,
//       ),
//       primaryTextTheme: TextTheme(
//         headline6: TextStyle(
//           color: Colors.red,
//         ),
//       ),
//     );
//   }

//   ThemeData dark() {
//     ThemeData td = ThemeData.dark();
//     ColorPalette c = ColorPalette.dark();

//     return ThemeData(
//       scaffoldBackgroundColor: c.scaffold,
//       iconTheme: IconThemeData(
//         color: c.secondary,
//       ), // Just Icon and IconButton
//       colorScheme: ColorScheme(
//         primary: c.primary, // Elevated Button Background,
//         //TextButton's child's text/icon color,outlinedbutton's
//         //child's text/icon color
//         onPrimary: c.onPrimary, // Elevated Buttons innerText color
//         primaryVariant: Colors.orange,
//         background: c.background,
//         onBackground: Colors.black,
//         secondary: c.secondary,
//         onSecondary: c.onSecondary,
//         secondaryVariant: Colors.deepOrange,
//         error: c.error,
//         onError: c.onError,
//         surface: c.background,
//         onSurface: Colors.black,
//         brightness: Brightness.dark,
//       ),
//       appBarTheme: AppBarTheme(
//         backgroundColor: c.background,
//         actionsIconTheme: IconThemeData(color: c.onPrimary),
//         iconTheme: IconThemeData(
//           color: c.onPrimary, // Leading Widget's Color
//         ),
//         textTheme: TextTheme(
//           headline6: TextStyle(
//             color: c.onPrimary,
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         elevation: 2,
//       ),
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//         backgroundColor: c.primary,
//         foregroundColor: c.onPrimary,
//       ),
//       textTheme: TextTheme(
//         headline6: TextStyle(
//           color: c.onPrimary,
//         ),
//       ),
//       cardColor: c.background,
//     );
//   }
// }


// class ColorPalette {
//   Color primary = Colors.teal.shade400;
//   Color onPrimary = Colors.white;
//   Color secondary = Colors.amber.shade400;
//   Color onSecondary = Colors.white;
//   Color error = Colors.red;
//   Color onError = Colors.white;
//   Color scaffold = Colors.grey[100];
//   Color background = Colors.white;

//   ColorPalette({
//     this.primary,
//     this.onPrimary,
//     this.secondary,
//     this.onSecondary,
//     this.error,
//     this.onError,
//     this.scaffold,
//     this.background,
//   });

//   factory ColorPalette.light() {
//     return ColorPalette(
//       primary: Colors.teal.shade400,
//       onPrimary: Colors.white,
//       secondary: Colors.amber.shade400,
//       onSecondary: Colors.white,
//       error: Colors.red,
//       onError: Colors.white,
//       scaffold: Colors.grey[100],
//       background: Colors.white,
//     );
//   }

//   factory ColorPalette.dark() {
//     return ColorPalette(
//       primary: Colors.teal.shade400,
//       onPrimary: Colors.white,
//       secondary: Colors.teal.shade400,
//       onSecondary: Colors.white,
//       error: Colors.red,
//       onError: Colors.white,
//       scaffold: Color(0xFF121212),
//       background: Color(0xFF1F1F1F),
//     );
//   }
// }
