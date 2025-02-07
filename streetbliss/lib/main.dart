import 'package:clothes/Details.dart';
import 'package:clothes/EditProfil.dart';
import 'package:clothes/Welcome.dart';
import 'package:clothes/cart.dart';
import 'package:clothes/dashboard.dart';
import 'package:clothes/favorite.dart';
import 'package:clothes/login.dart';
import 'package:clothes/profil.dart';
import 'package:clothes/register.dart';
import 'package:clothes/splashscreen.dart';
import 'package:clothes/transaksi.dart';
import 'package:flutter/material.dart';

//Muhammad Satria Rangga Prayoga-XIRPLA

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:
            Colors.deepPurple),
      ),
      home:  const SplashScreen(),
    );
  }
}
