import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kheti_shayak_my_version/screens/home/home_screen.dart';
import 'package:kheti_shayak_my_version/utils/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          appBarTheme: const AppBarTheme(color: appBarColor),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
