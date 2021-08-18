import 'package:corretor_news/blog/app/src/splash.dart';
import 'package:corretor_news/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import '../../../custom_theme.dart';
import '../../../size_config.dart';

// class App extends StatefulWidget {
//   @override
//   _AppState createState() => _AppState();
// }

// class _AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     final isThemeChange = Provider.of<ThemeProvider>(context);
//     return LayoutBuilder(
//       builder: (_, constraints) {
//         return OrientationBuilder(
//           builder: (_, orientation) {
//             SizeConfig().init(constraints, orientation);
//             return MaterialApp(
//               debugShowCheckedModeBanner: false,
//               title: 'NaijaTechGuy Blog',
//               theme: isThemeChange.mTheme == false
//                   ? buildLightTheme()
//                   : buildDarkTheme(),
//               home: SplashScreen(),
//             );
//           },
//         );
//       },
//     );
//   }
// }

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final isThemeChange = Provider.of<ThemeProvider>(context);
    return LayoutBuilder(
      builder: (_, constraints) {
        return OrientationBuilder(
          builder: (_, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              builder: (context, widget) => ResponsiveWrapper.builder(
                BouncingScrollWrapper.builder(context, widget!),
                maxWidth: 1200,
                minWidth: 450,
                defaultScale: true,
                breakpoints: [
                  ResponsiveBreakpoint.autoScale(450, name: MOBILE),
                  ResponsiveBreakpoint.autoScale(800, name: TABLET),
                  ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                  ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                  ResponsiveBreakpoint.autoScale(2460, name: "4K"),
                ],
                // background: Container(color: kBgLightColor),
              ),
              debugShowCheckedModeBanner: false,
              title: 'Corretor News App',
              theme: isThemeChange.mTheme == false
                  ? buildLightTheme()
                  : buildDarkTheme(),
              home: SplashScreen(),
            );
          },
        );
      },
    );
  }
}
