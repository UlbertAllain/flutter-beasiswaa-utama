import 'dart:async';
import 'package:flutter/material.dart';
import 'HomePage.dart'; // Ganti dengan halaman utama aplikasi Anda

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>
              Home())); // Ganti dengan halaman utama aplikasi Anda
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Ganti dengan warna yang Anda inginkan
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png', // Ganti dengan path gambar Anda
              width: 350, // Anda bisa menyesuaikan ukuran gambar
              height: 350,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
