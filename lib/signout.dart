import 'package:calulator/ProfileDetails.dart';
import 'package:calulator/signin.dart';
import 'package:flutter/material.dart';
import 'package:calulator/signout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class signout extends StatefulWidget {
  const signout({super.key});

  @override
  State<signout> createState() => _signoutState();
}

class _signoutState extends State<signout> {
  var nameContoller=TextEditingController();
  var fatherController=TextEditingController();
  var phoneContoller=TextEditingController();
  var emailControoler=TextEditingController();
  var pinControoler=TextEditingController();


  Future<void> savedetails()async{
    var name=nameContoller.text;
    var father=fatherController.text;
    var phone=phoneContoller.text;
    var email=emailControoler.text;
    var pin=pinControoler.text;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setString('father', father);
    await prefs.setString('phone', phone);
    await prefs.setString('email', email);
    await prefs.setString('pin', pin);
  }



  void alertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        // heading
        title: const Text("Log Out"),
        // for content
        content: const Text("Are you sure you want to logout"),
        // button
        actions: <Widget>[
          TextButton(
            onPressed: ()async {
              final SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setBool('isLogin', false);
              Navigator.push(context,
                MaterialPageRoute(builder:(context) => signin()),
              );
            },
            child: Text("Logout"),
          ),
          Text('No')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: Color(0xff12252c),
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color:Color(0xff12252c),),
        title: Text('Enter Your Details',style: TextStyle(color: Color(0xff12252c),fontWeight:FontWeight.w500),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 270),
            child: ElevatedButton(
                onPressed: () {

                  alertDialog(context);
                },
                child: Icon(Icons.arrow_forward,),
                     style: ElevatedButton.styleFrom(
                       minimumSize: Size(10, 60),
                         shape: CircleBorder(),
                     ),
            ),
          ),
          Column(
          children: [
          SizedBox(height:30,),
          Row(
           children: [
            SizedBox(
              height:50,
              width: MediaQuery.sizeOf(context).width/1,
              child: Padding(
                padding: const EdgeInsets.only(left:15,right: 15),
                child: TextField(
                  controller:nameContoller,
                  style: TextStyle(color: Colors.white, fontSize:15),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                    hintText: 'Enter Your Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
              ),
            )
            ],
          ),
          SizedBox(height:12,),
          Row(
            children: [
              SizedBox(
                height:50,
                width: MediaQuery.sizeOf(context).width/1,
                child: Padding(
                  padding: const EdgeInsets.only(left:15,right: 15),
                  child: TextField(
                  controller: fatherController,
                    style: TextStyle(color: Colors.white, fontSize:15),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                        hintText: 'Enter Your Fathers Name',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height:12,),
          Row(
            children: [
              SizedBox(
                height:50,
                width: MediaQuery.sizeOf(context).width/1,
                child: Padding(
                  padding: const EdgeInsets.only(left:15,right: 15),
                  child: TextField(
                    controller: phoneContoller,
                    style: TextStyle(color: Colors.white, fontSize:15),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android,color:Colors.white,),
                        hintText: 'Enter Your Phone No. ',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height:12,),
          Row(
            children: [
              SizedBox(
                height:50,
                width: MediaQuery.sizeOf(context).width/1,
                child: Padding(
                  padding: const EdgeInsets.only(left:15,right: 15),
                  child: TextField(
                    controller: emailControoler,
                    style: TextStyle(color: Colors.white, fontSize:15),
                    decoration: InputDecoration(
                      prefixIcon:Icon(Icons.mail,color:Colors.white),
                        hintText: 'Enter Your E-Mail Id',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height:12,),
          Row(
            children: [
              SizedBox(
                height:50,
                width: MediaQuery.sizeOf(context).width/1,
                child: Padding(
                  padding: const EdgeInsets.only(left:15,right: 15),
                  child: TextField(
                    controller: pinControoler,
                    style: TextStyle(color: Colors.white, fontSize:15),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_pin,color:Colors.white),
                        hintText: 'Enter Your Pin Code',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                ),
              )
            ],
          ),
          ]
          ),
          SizedBox(height: 60,),
          ElevatedButton(onPressed:
                savedetails,
              child:
              Text('Save Profile',style: TextStyle(color: Color(0xff12252c),fontSize:18),),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(200, 45),
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(10),
              )

            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 210),
            child: ElevatedButton(onPressed:(){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) =>Profiledetails(),));

            },
              child:
              Text('Go Profile',style: TextStyle(color: Color(0xff12252c),fontSize:18),),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 35),
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10),
                  )

              ),
            ),
          )
        ],
      ),

    );
  }
}
