import 'package:flutter/material.dart';
import './pages/login_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    )
  );
}