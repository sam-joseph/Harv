import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'FarmerLogIn.dart';

class FarmerSignUpUser extends StatelessWidget {
  var _name=TextEditingController();
  var _email=TextEditingController();
  var _aadharNo=TextEditingController();
  var _phoneNo=TextEditingController();
  var _password=TextEditingController();
  var _conformPassword=TextEditingController();

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
                     // SizedBox(height:80.0),
                      Padding(padding:EdgeInsets.all(20.0),
                      child:Column(children: <Widget>[
                        Text(
                          "",
                          style:TextStyle(color:Colors.white)
                        ),
                        ///SizedBox(height:10.0),
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
                    
                        child:Padding(
                          padding: EdgeInsets.only(top:40.0),
                          
                          child: Card(
          child: Padding(
            padding: EdgeInsets.only(left:20.0,right:20.0),
            child: Form(
            
              child:SingleChildScrollView(
                              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                      TextFormField(
                        controller:_name,
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
                      TextFormField(
                        controller:_email,
                        focusNode: myFocusNode,
                        decoration: InputDecoration(
                              labelText: 'email',
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
                        controller:_aadharNo,
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
                        controller:_phoneNo,
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
                        controller:_password,
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
                        controller:_conformPassword,
                        decoration: InputDecoration(
                          
                              labelText: 'conform password',
                              labelStyle:  TextStyle(color: myFocusNode.hasFocus ? Colors.red: Colors.black),
       enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Colors.green[300]),   
                          ),  
                focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green[700]),
                       ), 
                        

                        ),
                       
                      ),
                      SizedBox(height: 40,),
                      Builder(
                                        builder:(context)=> SizedBox(
                        width:200.0,
                        height:50.0,
          child: RaisedButton(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  onPressed: () {
  //Navigator.push(
  //  context,
   // MaterialPageRoute(builder: (context) => FarmerLogIn()),
 
 // );
  
  FarmerDetail(_name.text,_email.text,_aadharNo.text,_phoneNo.text,_password.text,"F");   
  },
  color:Colors.green[400],
  child: Text("SIGN UP",
  style:TextStyle(color:Colors.white,)
  ),
),
                                        )
                      )
                  
                  ],
                ),
              ),
            ),
          ),
        ),
                        )
                        ),
                        )
                    ],
                    ),
                  
        )
      
    ),
           );
 
  }
}

void FarmerDetail(String name,String email,String aadhar,String mobile,String password,String usertype)
{
final Map<String,dynamic> login={
'name':name,
'email':email,
'aadhar':aadhar,
'mobile':mobile,
'password':password,
'usertype':usertype
};

http.post("https://harvagri.herokuapp.com",body:json.encode(login));
print("function called");
}

