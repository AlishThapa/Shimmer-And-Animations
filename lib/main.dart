import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmering_effect/screens/shimmering_effect_page.dart';

import 'bloc/shimmer_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShimmerBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ShimmeringEffectPage()
      ),
    );
  }
}
