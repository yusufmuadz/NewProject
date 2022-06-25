import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:semesta/provider.dart';
import 'package:semesta/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider2(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider2>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: MyThemes.lightTheme,
          debugShowCheckedModeBanner: false,
          // darkTheme: MyThemes.darkTheme,
          themeMode: themeProvider.themeMode,
          home: Splash(),
        );
      });
}
