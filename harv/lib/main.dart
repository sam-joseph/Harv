import "package:flutter/material.dart";
import 'Splash.dart';
//import 'Farmer/TabFarmer.dart';
//import 'Seller/TabSeller.dart';
//import 'package:bloc/bloc.dart';
import 'Admin/AdminLogIn.dart';
import 'Registration.dart';
import 'Home/Weather/Weather.dart';

bool loaded=false;

void main()
{
  //BlocSupervisor().delegate = SimpleBlocDelegate();
  runApp(Harv());
}

class Harv extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:loaded==true?TabHarv():SplashScreen()
    );
  }

}

class TabHarv extends StatefulWidget
{
  
  
  @override
  _TabHarvState createState() => _TabHarvState();
}

class _TabHarvState extends State<TabHarv> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
            
            debugShowCheckedModeBanner: false,
                        home: DefaultTabController(
                           length: 4,
                                                  child: Scaffold(
                                                     appBar: AppBar(
                                                       backgroundColor: Colors.green,
            bottom: TabBar(
              tabs: [
               Tab(text:"Home") ,
                Tab(text:"Register"),
                Tab(text:"Product"),
                Tab(text:"Help")
              ],
            ),
            title: Center(child: Text('HARV')),
          ),
         
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
                  child: TabBarView(
            children: [
              Weather(),
              Registration(),
              AdminLogIn(),
              AdminLogIn(),
            ],
          ),
                  
                  
                  /*Center(
                    
              
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
  style:TextStyle(color:Colors.white)),
),
            ),
      ),
                ],
              ),
          ),*/
        )
      
    ),
                        ),
           );
  }
}


 