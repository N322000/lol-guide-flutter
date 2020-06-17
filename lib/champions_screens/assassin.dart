import 'dart:async';

import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Assassin extends StatefulWidget {
  @override
  _AssassinState createState() => _AssassinState();
}

class _AssassinState extends State<Assassin> {

  //refresh key
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  //scaffold key
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> _handleRefresh() {
    final Completer<void> completer = Completer<void>();

    Timer(const Duration(seconds: 2), () {
      completer.complete();
    });

    return completer.future.then<void>((_) {
      _scaffoldKey.currentState?.showSnackBar(SnackBar(
          content: const Text('Refresh complete'),
          action: SnackBarAction(
              label: 'RETRY',
              onPressed: () {
                _refreshIndicatorKey.currentState.show();
              })));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: LiquidPullToRefresh(
        backgroundColor: Colors.lightBlueAccent,
        springAnimationDurationInMilliseconds: 500,
        borderWidth: 2.0,
        key: _refreshIndicatorKey,
        onRefresh: _handleRefresh,
        showChildOpacityTransition: true,
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            GestureDetector(
              onTap: (){
                print('kufra');
              },
              child: Card(
                elevation: 5.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/kufra.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kufra',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Crowd Control/Initiator',
                            style: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print('saber');
              },
              child: Card(
                elevation: 5.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/saber.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Saber',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Crowd Control/Initiator',
                            style: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print('zilong');
              },
              child: Card(
                elevation: 5.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/zilong.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Zilong',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Crowd Control/Initiator',
                            style: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print('kufra');
              },
              child: Card(
                elevation: 5.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/kufra.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kufra',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Crowd Control/Initiator',
                            style: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print('kufra');
              },
              child: Card(
                elevation: 5.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/kufra.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kufra',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Crowd Control/Initiator',
                            style: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print('kufra');
              },
              child: Card(
                elevation: 5.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/kufra.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kufra',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Crowd Control/Initiator',
                            style: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print('kufra');
              },
              child: Card(
                elevation: 5.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/kufra.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kufra',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Crowd Control/Initiator',
                            style: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print('kufra');
              },
              child: Card(
                elevation: 5.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/kufra.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kufra',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Crowd Control/Initiator',
                            style: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print('kufra');
              },
              child: Card(
                elevation: 5.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/kufra.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kufra',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Crowd Control/Initiator',
                            style: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print('kufra');
              },
              child: Card(
                elevation: 5.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/kufra.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kufra',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Crowd Control/Initiator',
                            style: TextStyle(
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],

        ),
      ),

    );
  }
}
