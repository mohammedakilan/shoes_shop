import 'package:flutter/material.dart';
import 'package:shoes_shop/components/bottom_nav_bar.dart';
import 'package:shoes_shop/pages/shop_page.dart';

import 'card_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _SelectedIndex=0;
  void navigteBottomBar(int index){
    setState(() {
      _SelectedIndex=index;
    });
  }
  final List <Widget>_Pages=[
    const ShopPage(),
    const CardPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) =>navigteBottomBar(index) ,),
        appBar:AppBar() 
        ,body: _Pages[_SelectedIndex],
    );
  }
}