import 'package:calulator/home.dart';
import 'package:flutter/material.dart';
import 'package:calulator/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';


class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();

}

class _signinState extends State<signin> {

  void showCustomDialog(BuildContext context) {
    showDialog(context: context,
      builder: (BuildContext context) {
        return Dialog(
          child:
          Container(
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              ),
            height: MediaQuery.sizeOf(context).height / 1.8-50,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Enter Your Details',style: TextStyle(fontSize: 18,color: Color(0xff12252c),fontWeight:FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          label:Text('name'),
                          prefixIcon: Icon(Icons.perm_identity_rounded),
                          hintText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    height:16,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: numberController,
                      decoration: InputDecoration(
                          label:Text('Number'),
                          prefixIcon: Icon(Icons.phone_android),
                          hintText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(height: 16,),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          label:Text('Passsword'),
                          prefixIcon: Icon(Icons.key),
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(height: 16,),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: reenterController,
                      decoration: InputDecoration(
                          label:Text('Re-Enter password'),
                          suffixIcon:Icon(Icons.visibility_off),
                          prefixIcon: Icon(Icons.key),
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registered'),duration: Duration(seconds: 3),));

                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 40), backgroundColor: Color(0xff12252c)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  var firstController=TextEditingController();
  var secondController=TextEditingController();
  var nameController = TextEditingController();
  var numberController = TextEditingController();
  var passwordController = TextEditingController();
  var reenterController = TextEditingController();

      void validation(){
    setState(() {
      var first=firstController.text.length;
      var second=secondController.text.length;

      if(first <= 10 && second <= 10 ){

      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enter Valid Data')));
      }

    });
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff12252c),
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 35),
              child: Row(
                children: [
                  Text(
                    'Welcome Back.',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    'Login!',
                    style: TextStyle(color: Colors.white, fontSize: 33,fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height:90,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: MediaQuery.sizeOf(context).height / 1.5,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80)),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Color(0xff12252c),
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      controller: firstController,
                      decoration: InputDecoration(
                        label: Text('Username'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.perm_identity_rounded),
                          hintText: 'Username'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, left: 20, right: 20),
                    child: TextField(
                      controller: secondController,
                      decoration: InputDecoration(
                        label: Text('Password'),
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.key),
                          hintText: 'Password'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                             Text('Forgot Password?',style:TextStyle(color: Color(0xff12252c),decoration: TextDecoration.underline),)
                        ],
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: ElevatedButton(
                      onPressed: ()async{
                        final SharedPreferences prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('isLogin', true);

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) =>home(),));

                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff12252c),
                          minimumSize: Size(220, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20),
                    child: TextButton(
                        onPressed: () {
                          showCustomDialog(context);
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            color: Color(0xff12252c),
                            fontSize: 18,
                          ),
                        )),
                  ),
                ]),
              ),
            ),
          ],
        ));
  }
}
