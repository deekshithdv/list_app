import 'package:flutter/material.dart';
import 'package:list_app/presentation/favorite/favorite_page.dart';
import 'package:list_app/presentation/top/top_page.dart';

class BottomNavigationPage extends StatefulWidget{
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationState();
  
}

class _BottomNavigationState extends State<BottomNavigationPage>{
  static const _screens = [
    TopPage(),
    FavoritePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Hello World!"),),
    );
  }
}