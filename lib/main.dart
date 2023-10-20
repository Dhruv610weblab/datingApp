import 'package:country_code_picker/country_localizations.dart';
import 'package:datingapp/ui-kit/boarding/onboarding.dart';
import 'package:datingapp/units/language.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'units/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = Get.width / baseWidth;
    double ffem = fem * 0.97;

    // Get.changeThemeMode(
    //     ThemeHelper().loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    // Get.changeTheme(ThemeHelper().loadThemeFromBox()
    //     ? brightThemeData(fem, ffem)
    //     : darkThemeData(fem, ffem));
    print(ThemeHelper().theme);
    return GetMaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      themeMode: ThemeMode.system, //ThemeHelper().theme,
      translations: Languages(),
      locale: Get.deviceLocale, //Get.updateLocale(const Locale('el', 'Gr'));
      fallbackLocale: const Locale('en', 'US'),
      // ThemeHelper().loadThemeFromBox().value == true
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
      theme: brightThemeData(fem, ffem),
      darkTheme: darkThemeData(fem, ffem),
      supportedLocales: [Locale('en', 'US')],
      localizationsDelegates: const [
        CountryLocalizations.delegate,
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
      ],
      home: OnBoarding(),
    );
  }

//   ThemeData brightThemeData(double fem, double ffem) {
//     return ThemeData(
//       appBarTheme: AppBarTheme(
//           foregroundColor: AppColor.black,
//           backgroundColor: AppColor.white,
//           iconTheme: IconThemeData(color: AppColor.primary)),
//       primarySwatch: Colors.pink,
//       backgroundColor: AppColor.white,
//       scaffoldBackgroundColor: AppColor.white,
//       // bottomNavigationBarTheme:
//       //     BottomNavigationBarThemeData(backgroundColor: AppColor.black),
//       textTheme: TextTheme(
//         headline1: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 24 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.primary,
//         ),
//         headline2: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 34 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.black,
//         ),
//         headline3: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 18 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.black,
//         ),
//         headline4: SafeGoogleFont('Sk-Modernist',
//             fontSize: 16 * ffem,
//             fontWeight: FontWeight.w400,
//             height: 1.5 * ffem / fem,
//             // color: Color(0xff323755),
//             color: AppColor.black),
//         headline5: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 16 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.black,
//         ),
//         headline6: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 24 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.black,
//         ),
//         subtitle1: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 12 * ffem,
//           fontWeight: FontWeight.w400,
//           height: 1.5 * ffem / fem,
//           color: AppColor.black,
//         ),
//         subtitle2: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 20 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.black,
//         ),
//         bodyText1: SafeGoogleFont('Sk-Modernist',
//             fontSize: 14 * ffem,
//             fontWeight: FontWeight.w400,
//             height: 1.5 * ffem / fem,
//             // color: Color(0xff323755),
//             color: AppColor.black),
//         bodyText2: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 24 * ffem,
//           fontWeight: FontWeight.w400,
//           height: 1.5 * ffem / fem,
//           color: AppColor.black,
//         ),
//       ),
//     );
//   }
//
//   ThemeData darkThemeData(double fem, double ffem) {
//     return ThemeData(
//       appBarTheme: AppBarTheme(
//           foregroundColor: AppColor.white,
//           backgroundColor: AppColor.black,
//           iconTheme: IconThemeData(color: AppColor.white)),
//       primarySwatch: Colors.pink,
//       backgroundColor: AppColor.black,
//       scaffoldBackgroundColor: AppColor.black,
//       // bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       //     backgroundColor: AppColor.bottomNavPrimary),
//       textTheme: TextTheme(
//         headline1: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 24 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.primary,
//         ),
//         headline2: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 34 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.white,
//         ),
//         headline3: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 18 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.white,
//         ),
//         headline4: SafeGoogleFont('Sk-Modernist',
//             fontSize: 16 * ffem,
//             fontWeight: FontWeight.w400,
//             height: 1.5 * ffem / fem,
//             // color: Color(0xff323755),
//             color: AppColor.white),
//         headline5: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 16 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.white,
//         ),
//         headline6: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 24 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.white,
//         ),
//         subtitle1: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 12 * ffem,
//           fontWeight: FontWeight.w400,
//           height: 1.5 * ffem / fem,
//           color: AppColor.white,
//         ),
//         subtitle2: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 20 * ffem,
//           fontWeight: FontWeight.w700,
//           height: 1.5 * ffem / fem,
//           color: AppColor.white,
//         ),
//         bodyText1: SafeGoogleFont('Sk-Modernist',
//             fontSize: 14 * ffem,
//             fontWeight: FontWeight.w400,
//             height: 1.5 * ffem / fem,
//             // color: Color(0xff323755),
//             color: AppColor.white),
//         bodyText2: SafeGoogleFont(
//           'Sk-Modernist',
//           fontSize: 24 * ffem,
//           fontWeight: FontWeight.w400,
//           height: 1.5 * ffem / fem,
//           color: AppColor.white,
//         ),
//       ),
//     );
//   }
}
