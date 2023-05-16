import 'package:flutter/material.dart';
import 'package:flutterlogo/authentication.dart';
import 'package:flutterlogo/welcomeback.dart';
class logo extends StatefulWidget {
  const logo({Key? key}) : super(key: key);

  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  final TextEditingController email=TextEditingController();
  final TextEditingController password =TextEditingController();
  bool? check2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
    child:Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('lib/imag/flutter_icon.jpeg'),radius: 30,
          ),SizedBox(height: 20,),
          Row(
            children: [
              Text('Welcome!',),SizedBox(height: 20,),
            ],
          ),
          TextField(controller:email,decoration: InputDecoration(prefixIcon: Icon(Icons.mail),border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),hintText: 'Email'),
          ),
          SizedBox(height: 20,),
          TextField(controller:password,obscureText:true,decoration: InputDecoration(prefixIcon: Icon(Icons.lock),border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),hintText: 'Password'),

          ),SizedBox(height: 20,),
          TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.lock),border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),hintText: 'Confirm Password'),
          ),
          SizedBox(height: 20,),
          TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.contact_mail_rounded),border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),hintText: 'Full name'),
          ),SizedBox(height: 20,),
          CheckboxListTile(value: check2, onChanged: (bool? value) {
    setState(() {
    check2 = value;
    });
    },
        title:  Text('By Creating account, I agree to Terms & Conditions and Privacy Policy'),),
          SizedBox(height: 20,),
          TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                AuthenticationHelper().signUp(
                    email: email.text, password: password.text).then((result) {
                  if (result == null) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => back()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(result,
                          style: TextStyle(fontSize: 16),),));
                  }
                });
              },
                child: Text('     Sign Up     ',style: TextStyle(color: Colors.white),)),
          SizedBox(height: 20,),
          Text('Already here ? Get Logged in Now !'),

],
      ),
    ),
    );
  }
}
