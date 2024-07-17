


import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key?key}):super(key:key);

  @override 
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{


  final _myBox=Hive.box('myBox');

  void writeData(){
    _myBox.put(1,'Krit');
    print(_myBox.get(1));
  }

  void readData(){
    print(_myBox.get(1));
  }

  void deleteData(){
    _myBox.delete(1);
    print('done');
  }



  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            MaterialButton(
              onPressed: writeData,
              child:Text('Write'),
              color:Colors.blue,
            ),
            MaterialButton(
              onPressed:readData,
              child:Text('Read'),
              color:Colors.blue,
            ),
            MaterialButton(
              onPressed: deleteData,
              child:Text('Delete'),
              color: Colors.blue,
            )
          ]
        )

      )

    );
  }
}