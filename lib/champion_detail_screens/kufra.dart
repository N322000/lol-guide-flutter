import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leagueoflegendguide/champions_screens/fighter.dart';
import 'package:leagueoflegendguide/champions_screens/mage.dart';
import 'package:leagueoflegendguide/champions_screens/tank.dart';

class Kufra extends StatefulWidget {
  @override
  _KufraState createState() => _KufraState();
}

class _KufraState extends State<Kufra> {

  nested() {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Kufra'),
                background: Image.asset(
                  'assets/lol3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: DefaultTabController(length: 3,
            child: Scaffold(
              backgroundColor: Colors.grey[600],
              appBar: AppBar(
                elevation: 1,
                bottom: PreferredSize(
                  preferredSize: Size(-5 , -5),
                  child: TabBar(
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                          color: Colors.grey[600]
                      ),
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('Spell'),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('Items'),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('History'),
                          ),
                        ),
                      ]),
                ),
              ),
              body: TabBarView(children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ]),
            ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
  }
}