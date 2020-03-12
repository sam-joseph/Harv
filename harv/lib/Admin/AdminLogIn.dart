import 'package:flutter/material.dart';


class AdminLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            
            debugShowCheckedModeBanner: false,
                        home: Scaffold(
                           resizeToAvoidBottomPadding: false,
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
                  child:Column(children: <Widget>[
                    //SizedBox(height:80.0),
                    Padding(padding:EdgeInsets.all(20.0),
                    child:Column(children: <Widget>[
                      Text(
                        "",
                        style:TextStyle(color:Colors.white)
                      ),
                      //SizedBox(height:10.0),
                      Text(
                        "",
                        style:TextStyle(color:Colors.white)
                      ),
                    ],
                    )
                    ),
                    Expanded(child:Container(
                      decoration:BoxDecoration(color:Colors.white,
                      borderRadius:BorderRadius.only(topLeft: Radius.circular(60.0),topRight: Radius.circular(60.0))
                      ),
                             child: Padding(
                  padding: EdgeInsets.all(30),
                  child: SingleChildScrollView(
                                      child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        
                                                 Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10)
                              )]
                            ),
                            
                                                        child: Column(
                                children: <Widget>[
                              
                                                                   Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                      ),
                                      child:  TextField(
                                          decoration: InputDecoration(
                                            hintText: "Email or Phone number",
                                            hintStyle: TextStyle(color: Colors.grey),
                                            border: InputBorder.none
                                          ),
                                        ),
                                      
                                    ),
                                  
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child: 
                                                                       TextField(
                                        decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                        ),
                                           obscureText: true,
                        ),
                                    
                        )
                    ],
                    ),
                            
        ),
                         
      
     SizedBox(height: 40,),
                        
                           Text("Forgot Password?", style: TextStyle(color: Colors.grey),),
                          
                        SizedBox(height: 40,),
                         
                                                 Builder(
                                      builder:(context)=> SizedBox(
                      width:200.0,
                      height:50.0,
          child: RaisedButton(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  onPressed: () {
 
     
  },
  color:Colors.green[400],
  child: Text("LOGIN",
  style:TextStyle(color:Colors.white,)),
),
                      ),
                ),
                         
     
                      ]
                    ),
                  )
                             )
                    )
                    )
                  ]
                  )
        )
                        )
    );
        
                  
                  
 
  }
}
