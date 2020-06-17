import 'package:flutter/material.dart';
import 'package:leagueoflegendguide/champions_screens/assassin.dart';
import 'package:leagueoflegendguide/champions_screens/fighter.dart';
import 'package:leagueoflegendguide/champions_screens/mage.dart';
import 'package:leagueoflegendguide/champions_screens/marksman.dart';
import 'package:leagueoflegendguide/champions_screens/support.dart';
import 'package:leagueoflegendguide/champions_screens/tank.dart';
import 'package:leagueoflegendguide/utils/strings.dart';

class Champions extends StatefulWidget {
  @override
  _ChampionsState createState() => _ChampionsState();
}

class _ChampionsState extends State<Champions> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6, child: Scaffold(
      backgroundColor: Colors.grey[600],
        appBar: AppBar(

          elevation: 1,
          title: Text(STRINGS.champions),
          bottom: TabBar(
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold
            ),
            indicatorSize: TabBarIndicatorSize.tab,
//            indicatorWeight: 5.0,
//            indicatorPadding: EdgeInsetsGeometry(),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
              color: Colors.grey[600]
            ),
              isScrollable:true,
              tabs: [
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text(STRINGS.tank),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text(STRINGS.fighter),
              ),
//              child: Container(
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(50),
//                  border: Border.all(
//                      color: Colors.redAccent,
//                      width: 1
//                  ),
//                ),
//                child: Align(
//                  alignment: Alignment.center,
//                  child: Text('Fighter'),
//                ),
//              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text(STRINGS.mage),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text(STRINGS.assassin),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text(STRINGS.support),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text(STRINGS.marksman),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Tank(),
          Fighter(),
          Mage(),
          Assassin(),
          Support(),
          Marksman(),
        ]),
      )
    );
  }
}
