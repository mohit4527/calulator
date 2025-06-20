import 'package:calulator/signout.dart';
import 'package:flutter/material.dart';
import 'package:calulator/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff12252c),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back),
          title: Text(
            'Home',
            style: TextStyle(
                color: Color(0xff12252c), fontWeight: FontWeight.bold),
          ),
        ),
        body:
        Column(
            children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                            Card(
                              elevation: 10,
                              shadowColor: Colors.black,
                              color: Colors.white,
                              child: SizedBox(
                                height:MediaQuery.sizeOf(context).height/3-125,
                                width: MediaQuery.sizeOf(context).width/2-25,
                                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:60),
                        child: Text('Attendance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xff154c79)),),
                      )
                    ],
                  ),
                                ),
                              ),
                            ),
                      Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: Colors.white,
                        child: SizedBox(
                          height:MediaQuery.sizeOf(context).height/3-125,
                          width: MediaQuery.sizeOf(context).width/2-25,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:60),
                                  child: Text('Attendance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xff154c79)),),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                                ]),
                ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                    children: [
                      Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: Colors.white,
                        child: SizedBox(
                          height:MediaQuery.sizeOf(context).height/3-125,
                          width: MediaQuery.sizeOf(context).width/2-25,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:60),
                                  child: Text('Attendance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xff154c79)),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: Colors.white,
                        child: SizedBox(
                          height:MediaQuery.sizeOf(context).height/3-125,
                          width: MediaQuery.sizeOf(context).width/2-25,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:60),
                                  child: Text('Attendance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xff154c79)),),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
              SizedBox(height:20,),

              Center(
                child: ElevatedButton(onPressed:() async {



                  Navigator.push(context,
                    MaterialPageRoute(builder:(context) => signout()),
                 );
                },
                  child:
                  Text('Logout',style: TextStyle(color: Color(0xff12252c)),),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(230, 40),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                ),
              ),
      ],
        )
    );
  }
}
