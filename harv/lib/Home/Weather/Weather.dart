import 'package:flutter/material.dart';
import 'dart:async';
import 'Utill.dart' as utill; 
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

 class Weather extends StatefulWidget
 {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
    var _send= TextEditingController();

    Widget s;
    
String temp,temp_min,temp_max,humidity,wind_speed,wind_deg,description,decision,sunRise,sunSet;
   void showStuff() async{
                            Map data = await getWeather(utill.appId, utill.defaulutCity);
                            print(data.toString());
                          }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home:Scaffold(
         resizeToAvoidBottomPadding: false,
      //backgroundColor: Colors.green,
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

              child: Column( children:<Widget>[
                 Padding(padding:EdgeInsets.all(20.0),
                    child:Column(children: <Widget>[
                      Text(
                        "",
                        style:TextStyle(color:Colors.white)
                      ),
                     // SizedBox(height:10.0),
                      Text(
                        "",
                        style:TextStyle(color:Colors.white)
                      ),
                    ],
                    )
                    ),
                              Expanded(
                                
                    child: Container(
                      decoration:BoxDecoration(color:Colors.white,
                      borderRadius:BorderRadius.only(topLeft: Radius.circular(60.0),topRight: Radius.circular(60.0))
                      ),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                                          child: SingleChildScrollView(
                  child: Column(
                     // mainAxisAlignment:MainAxisAlignment.center,
                     mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                      SizedBox(
                        height:10.0
                      ),
                      Text(
                      DateFormat('EEEE, d MMMM yyyy').format(DateTime.now()),
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14),

                          textAlign: TextAlign.left,
                  ),
                   SizedBox(
                        height:30.0
                      ),
                      Text((_send.text).toUpperCase(),
                      style:TextStyle(
                        letterSpacing:2.0,
                        fontSize:25.0,
                        color:Colors.green
                      )),

                      SizedBox(
                        height:30.0
                      ),

         /* RaisedButton(onPressed:showStuff,
          child:Text('pressed')
          ),*/
          /*Container(

            margin: EdgeInsets.fromLTRB(30.0, 290.0, 0.0, 0.0),
            child:Text(s)
           
//child:Text("weather")
          ),*/
     TextFormField(
                controller:_send,
                decoration: InputDecoration(
                          
                              labelText: 'City Name:',
                              labelStyle:  TextStyle(color: Colors.black87),
       enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Colors.green[300]),   
                          ),  
                focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green[700]),
                       ), 
                        

                        ),
            ),
            SizedBox(
                        height:30.0
                      ),

            ButtonTheme(
              minWidth:200.0,
              height:50.0,
                          child: RaisedButton(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  
                  onPressed:(){
                    setState((){

              s= updateTemp(_send.text);
               print(s);
                    });  },

color:Colors.green[400],
  child: Text("Pressed",
  style:TextStyle(color:Colors.white,)),
              ),
            ),
             Container(

            margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
           child:s
           
//child:Text("weather")
          ),
          ],),
        ),
                    ),
                                                              ),
                              ),]
              ),
              
      )
      ),
    );
  }

Future<Map>getWeather(String appId,String city)async
{
  String apiUrl='https://api.openweathermap.org/data/2.5/weather?q=$city&appid=${utill.appId}&units=imperial';
  http.Response response = await http.get(apiUrl);
  return jsonDecode(response.body);
}

Widget updateTemp(String city)
{
  
  print(city);
  return FutureBuilder(
    future:getWeather(utill.appId,city),
    
    builder:(BuildContext context, AsyncSnapshot<Map> snapShot)
    {
     
if(snapShot.hasData)
{
Map content = snapShot.data;

 try{

    temp= content['main']['temp'].toString();
    temp_min = content['main']['temp_min'].toString();
    temp_max = content['main']['temp_max'].toString();
    humidity = content['main']['humidity'].toString();
   // description= content['weather']['description'].toString();
    wind_speed = content['wind']['speed'].toString();
    wind_deg = content['wind']['deg'].toString();
     sunSet = content['sys']['sunrise'].toString();
      sunRise= content['sys']['sunset'].toString();
    decision="";
      }
  catch(exception){
    temp="";
    temp_min="";
    temp_max="";
    humidity="";
    //description="";
    wind_speed="";
    wind_deg="";
    decision="Not Valid";
    sunRise="";
    sunSet="";
  }
 return Container(
   // margin: EdgeInsets.all(200.0),
    
        child: Column(children: <Widget>[
          Text(temp,style:TextStyle(
            color:Colors.green,
            fontSize:60.0,
          )),
          SizedBox(
       height:30.0
   ),


                   SingleChildScrollView(
            scrollDirection: Axis.horizontal,
                    child: Row(
            //scrollDirection: Axis.horizontal,
            children: <Widget>[
             Row(
      children:<Widget>[  
       // Text('Decision'),
            Text(decision,)
      ]
      ),

   SizedBox(
       width:5.0
   ),

             Column(
      children:<Widget>[  
            Text('Temperature'),
            Text(temp,)
      ]
      ),

   SizedBox(
       width:20.0
   ),
       Column(
      children:<Widget>[  
            Text('Temperature Min'),
            Text(temp_min,)
      ]
      ),
      SizedBox(
       width:20.0
   ),
      Column(
      children:<Widget>[  
            Text('Temperature Max'),
            Text(temp_max,)
      ]
      ),
      SizedBox(
       width:20.0
   ),
      Column(
      children:<Widget>[  
            Text('Humidity'),
            Text(humidity,)
      ]
      ),
      SizedBox(
       width:20.0
   ),

      Column(
      children:<Widget>[  
            Text('Wind Speed'),
            Text(wind_speed,)
      ]
      ),
      SizedBox(
       width:20.0
   ),
      Column(
      children:<Widget>[  
            Text('Wind Deg'),
            Text(wind_deg,)
      ]
      ),

       SizedBox(
       width:20.0
   ),
   
      Column(
      children:<Widget>[  
            Text('SunRise'),
            Text(sunRise)
      ]
      ),
      SizedBox(
       width:20.0
   ),

      Column(
      children:<Widget>[  
            Text('SunSet'),
            Text(sunSet,)
      ]
      ),
      
   
],
),
          ),
        ],
        ),
    
);
 
}
else{
return Container(
  child:Text("error")
);
}
    }
  );
}
}