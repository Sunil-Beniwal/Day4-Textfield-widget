import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: toggel(),
    ); 
  }
}

class toggel extends StatefulWidget {
  toggel({Key? key}) : super(key: key);

  @override
  State<toggel> createState() => _toggelState();
}

class _toggelState extends State<toggel> {
   Color color = Colors.yellow;
   int countervalue = 0;
   TextEditingController nameController = TextEditingController(text: "no data");

  getEmail(){
    return "email@gmail.com";
  }
  @override
  void initState() {
    nameController.text = getEmail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  
   return Scaffold(
      backgroundColor: color,
     body: SafeArea(
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           
           children: [
             ElevatedButton(
               child: Text("Add"),
               onPressed: () {
                countervalue = countervalue + 1; 
                setState(() {
                  
                 });
                 
               },
               ),

               SizedBox(width: 20),
               Text(countervalue.toString()),

               SizedBox(width: 20),
             ElevatedButton(
               child: Text("Sub"),
               onPressed: () {
                 countervalue = countervalue - 1;
                  setState(() {
                   
                 });
                 print(countervalue);
                },
               ),
             SizedBox(width: 20),
              Text("Please type your name"),
              SizedBox(width: 20),

            TextField(
              controller: nameController,
            ),

            if(countervalue<10) ElevatedButton(
               child: Text("I am here"),
               onPressed: () {
                print(nameController.text);
                setState(() {
                  
                });
                 print(countervalue);   
               },
               ),
           ],
         ),
       ),
          ),
    );
  }
}