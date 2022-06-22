import 'package:bloc_project/routes/router.dart';
import 'package:bloc_project/screens/landing_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
   MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        brightness: Brightness.dark
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),

    );
  }
}