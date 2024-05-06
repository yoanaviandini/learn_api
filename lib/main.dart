import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/home_page_stateless_future_builder.dart';
import 'package:flutter_application_3/pages/home_page_stateful.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'material app',
      home: HomePageStatelessFutureBuilder(),
    );
  }
}
