import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterlogo/flutterwelcome.dart';
Future<void>main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home:logo(),));
}class logo  extends StatelessWidget{
  const logo ({Key?key}):super(key: key);
  @override
Widget build(BuildContext context){
    return MaterialApp(title: 'flutter auth demo',
    home: logo(),);
}
}