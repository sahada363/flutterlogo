import 'package:flutter/material.dart';
class exit extends StatefulWidget {
  const exit({Key? key}) : super(key: key);

  @override
  State<exit> createState() => _exitState();
}

class _exitState extends State<exit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('WELCOME'),
        SizedBox(
          height: 15,
        ),
        TextButton(onPressed: (){}, child: Text('Sign Out')),
      ],),
    );
  }
}
