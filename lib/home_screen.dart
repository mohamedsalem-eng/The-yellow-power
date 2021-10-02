import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_yellow_power/Constants/constants.dart';

import 'BottomNavigationBar/Profile/profile.dart';
import 'BottomNavigationBar/Scenes/scenes.dart';
import 'BottomNavigationBar/home.dart';
import 'BottomNavigationBar/stats.dart';
import 'Providers/homescreen_provider.dart';
class HomeScreen extends StatelessWidget {
  final List<Widget> _children = [
    Home(),
    Stats(),
    Scenes(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    // final _index = Provider.of<IndexProvider>(context,listen: false);
    return Consumer<IndexProvider>(
      builder:(context,_index,_)=> new Scaffold(
          body: _children[_index.index],
          bottomNavigationBar: Builder(builder: (BuildContext context){
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              fixedColor: MainColor,
              unselectedItemColor: Colors.grey[400],
              onTap: _index.incrementCount,
              currentIndex: _index.index,
              backgroundColor: Colors.white,
              items: [

                BottomNavigationBarItem(
                  icon: Icon(Icons.home,size: 35,),
                  label: "Home",
                ),
                BottomNavigationBarItem(

                    icon: Icon(Icons.bar_chart,size: 35,)
                ,label: "Stats"),

                BottomNavigationBarItem(

                    icon: Icon(Icons.settings,size: 35,),label: "Settings"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person,size: 35,),label: "Profile"),
              ],
            );
          },)
      ),
    );
  }
}

