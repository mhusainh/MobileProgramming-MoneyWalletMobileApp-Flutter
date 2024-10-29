import 'package:flutter/material.dart';
import '../utils/route_utils.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/welcome',
      onGenerateRoute: RouteUtils.generateRoute,
    );
  }
}