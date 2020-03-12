import 'package:flutter/material.dart';
import 'SellerLogIn.dart';

class SellerSignUp extends StatelessWidget {
   FocusNode myFocusNode = new FocusNode();
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
                  
                                      child: Column(children: <Widget>[
                      //SizedBox(height:80.0),
                      Padding(padding:EdgeInsets.all(20.0),
                      child:Column(children: <Widget>[
                        Text(
                          "",
                          style:TextStyle(color:Colors.white)
                        ),
                      //  SizedBox(height:10.0),
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
                            padding: EdgeInsets.only(top:40.0),
                            
                            child: Card(
          child: Padding(
            padding: EdgeInsets.only(left:20.0,right:20.0),
            child: Form(
            
             // child:SingleChildScrollView(
                                child:ListView(
                                                                  
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                  Container(
                                                  child: TextFormField(
                            decoration: InputDecoration(
                              
                                    labelText: 'Name:',
                                    labelStyle:  TextStyle(color: myFocusNode.hasFocus ? Colors.red: Colors.black),
       enabledBorder: UnderlineInputBorder(      
                              borderSide: BorderSide(color: Colors.green[300]),   
                              ),  
                focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green[700]),
                           ), 
                            

                            ),
                           
                          ),
                      ),
                      TextFormField(
                          focusNode: myFocusNode,
                          decoration: InputDecoration(
                                  labelText: 'Lic No:',
                                  labelStyle:  TextStyle(color: myFocusNode.hasFocus ? Colors.red: Colors.black),
       enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.green[300]),   
                            ),  
                focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green[700]),
                       ), 
                          ),
                          
                       
                          
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            
                                  labelText: 'Aadhar NO:',
                                  labelStyle:  TextStyle(color: myFocusNode.hasFocus ? Colors.red: Colors.black),
       enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.green[300]),   
                            ),  
                focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green[700]),
                       ), 
                          

                          ),
                       
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            
                                  labelText: 'Phone no:',
                                  labelStyle:  TextStyle(color: myFocusNode.hasFocus ? Colors.red: Colors.black),
       enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.green[300]),   
                            ),  
                focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green[700]),
                       ), 
                          

                          ),
                       
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            
                                  labelText: 'password:',
                                  labelStyle:  TextStyle(color: myFocusNode.hasFocus ? Colors.red: Colors.black),
       enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.green[300]),   
                            ),  
                focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green[700]),
                       ), 
                          

                          ),
                          obscureText: true,
                          

                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            
                                  labelText: ' conform password:',
                                  labelStyle:  TextStyle(color: myFocusNode.hasFocus ? Colors.red: Colors.black),
       enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.green[300]),   
                            ),  
                focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green[700]),
                       ), 
                          

                          ),
                          obscureText: true,
                          

                      ),
                      SizedBox(height: 40,),
                      Builder(
                                            builder:(context)=> SizedBox(
                          width:200.0,
                          height:50.0,
          child: RaisedButton(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SellerLogIn()),
  );
     
  },
  color:Colors.green[400],
  child: Text("SIGN UP",
  style:TextStyle(color:Colors.white,)),
),
                                            )
                      )
                  
                  ],
                ),
                                
             // ),
            ),
          ),
        ),
                          ),
                        
                        ),
                        )
                    ],
                    ),
                  
        )
      
    ),
           );
 
  }
}