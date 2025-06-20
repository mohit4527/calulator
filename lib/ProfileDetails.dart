import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profiledetails extends StatefulWidget {
  const Profiledetails({super.key});

  @override
  State<Profiledetails> createState() => _ProfiledetailsState();
}

class _ProfiledetailsState extends State<Profiledetails> {
  late SharedPreferences prefs;
  late String name;
  late String father;
  late String email;
  late String phone;
  late String pin;
  @override
  void initState() {
    super.initState();
    _initializeSharedPreferences();

  }

  Future<void> _initializeSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name')!;
      father = prefs.getString('father')!;
      email = prefs.getString('email')!;
      phone = prefs.getString('phone')!;
      pin = prefs.getString('pin')!;

    });


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff12252c),
      appBar:AppBar(
        leading: Icon(Icons.arrow_back,color: Color(0xff12252c),),
        backgroundColor:Colors.white,
        title:Text('Profile Details',style:TextStyle(color:Color(0xff12252c),fontWeight:FontWeight.w500,fontSize:22),),
        centerTitle:true,
      ) ,
      body:Column(
        children: [
          SizedBox(height: 130,),
          Center(
            child: Container(
                height:MediaQuery.sizeOf(context).height/1.8,
              width: MediaQuery.sizeOf(context).width/1.1,
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Your Details ',style: TextStyle(color:Color(0xff12252c),fontSize:25,fontWeight:FontWeight.w500),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(right:10),
                        child: Text('Name : $name',style: TextStyle(color:Colors.red,fontSize:18),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:16),
                        child: Text('Fathers Name : $father',style: TextStyle(color:Colors.red,fontSize:18),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('E-Mail :$email',style: TextStyle(color:Colors.red,fontSize:18),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Phone No. :$phone',style: TextStyle(color:Colors.red,fontSize:18),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Pin Code :$pin',style: TextStyle(color:Colors.red,fontSize:18),),
                      ),
                             ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
