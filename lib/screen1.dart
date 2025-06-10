import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});
@override
  State<StatefulWidget> createState() {
    return  _MyApp();
  }


}
class _MyApp extends State<MyApp>{
  int counter = 0;
  @override
  Widget build(BuildContext context) {
      increaseCounter(){
        setState(() {
          counter++;

        });
    }
      decreaseCounter(){
        setState(() {
          counter--;
        });
      }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent.shade400 ,
        title: Center(child: Text('Counter Assignment')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter'),
            Text('Click here'),

FloatingActionButton(onPressed:decreaseCounter,
  backgroundColor: Colors.redAccent.shade200,
  child:
  Icon(Icons.remove),
)
        ],),
      ),

      floatingActionButton: FloatingActionButton(onPressed:increaseCounter,
        backgroundColor: Colors.green.shade400,
        child:
        Icon(Icons.add),),
    );
  }
}
