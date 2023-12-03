import 'package:flutter/material.dart';
import 'package:newws/pages/all.dart';
import 'package:newws/pages/business.dart';
import 'package:newws/pages/science.dart';
import 'package:newws/pages/sports.dart';
class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                        hintText: "Search...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                        )
                    ),
                  ),
              ),
              SizedBox(width: 20,),
              FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: Color(0xFFFF3A44),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Icon(Icons.notifications_none),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(50)
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.black45)
            ),
              tabs: [
                Tab(
                  child: Text("All",style: TextStyle(color: Colors.black),),
                ),
                Tab(
                  child: Text("Science",style: TextStyle(color: Colors.black),),
                ),
                Tab(
                  child: Text("Business",style: TextStyle(color: Colors.black),),
                ),
                Tab(
                  child: Text("Sport",style: TextStyle(color: Colors.black),),
                ),
              ]
          ),
        ),
        body: TabBarView(
            children: [
              AllTab(),
              ScienceTab(),
              BusinessTab(),
              SportTab()
            ]
        ),
      ),
    );
  }
}