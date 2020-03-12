import "package:flutter/material.dart";
import "Farmer/TabFarmer.dart";
import 'Seller/TabSeller.dart';
import 'Admin/AdminLogIn.dart';

class Registration extends StatefulWidget
{
  
  
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    
    return 
          MaterialApp(
            
            debugShowCheckedModeBanner: false,
                        home: Scaffold(
        body:Container(
          
          width:double.infinity,
          decoration:BoxDecoration(
              gradient:LinearGradient(
                begin:Alignment.topCenter,
                colors:
                [
                  Colors.green[900],
                  Colors.green[700],
                  Colors.green[500],
                  Colors.green[300],
                ]

              ),
             ),
                  child: Center(
                    
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
            Builder(
                                  builder:(context)=> SizedBox(
                    width:300.0,
                    height:50.0,
          child: RaisedButton(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TabFarmer()),
  );
     
  },
  color:Colors.green[900],
  child: Text("Farmer",
  style:TextStyle(color:Colors.white,)),
),
                    ),
                ),
                  SizedBox(
                    height:30.0,
                  ),
    Builder(
              builder:(context)=> SizedBox(
          width:300.0,
                    height:50.0,
                        child: RaisedButton(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TabSeller()),
  );
  },
  color:Colors.green[900],
  child: Text("Seller",
  style:TextStyle(color:Colors.white)),
),
            ),
      ),
       SizedBox(
                    height:30.0,
                  ),
      Builder(
                                  builder:(context)=> SizedBox(
                    width:300.0,
                    height:50.0,
          child: RaisedButton(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AdminLogIn()),
  );
     
  },
  color:Colors.green[900],
  child: Text("Admin",
  style:TextStyle(color:Colors.white,)),
),
                    ),
                ),
                  SizedBox(
                    height:30.0,
                  ),
                ],
              ),
          ),
        )
      
    ),
           );
            

  }
}