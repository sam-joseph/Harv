//Declare variables
var exp = require('express');
var mysql = require('mysql');
var body_parser = require('body-parser');

const app = exp();

//server listen
app.listen(3000,function(){
    console.log("server running")
});

//Establish connection
const con = mysql.createConnection(
    {
        host: "remotemysql.com",
        user: "U42YZEoduq",
        password: "fqjtJdxvdY",
        port: 3306,
        database: "U42YZEoduq",
    }
);

// accept url encoded
app.use(body_parser.urlencoded({
    extended: true
}));

// accept json 
app.use(body_parser.json());

//connection success or failed
if(con)
{
    console.log("connection success");
}
else
{
   console.log("connection failed"); 
}

app.post('/register',function(req,res){
console.log("register trigger");

    //get details from users
    var username = req.body.name;
    var emailid = req.body.email;
    var aadharno = req.body.aadhar;
    var phone = req.body.mobile;
    var password = req.body.password;
    var usertype = req.body.usertype;

    //Establish query
    //con.query("use sam;",function(error,result){
     // if(error)
     // {
      //    throw error;
    //  }
     // else
      //{
          con.query("select * from U42YZEoduq.users where aadhar_no='"+aadharno+"'",function(err,re){
              if(err)
              {
                  throw err;
              }
              else
              { console.log(re.length)
                  if(re.length)
                  {
                      //user alread registered
                  res.send("user already registered");
          console.log("user already registered")  
          //con.end();
                  }
                  else{
                      //read user details
                      
                    console.log("read user details")
                     con.query("insert into U42YZEoduq.users(username,email_id,aadhar_no,mobile,password,usertype) values('"+username+"','"+emailid+"','"+aadharno+"','"+phone+"','"+password+"','"+usertype+"');",function(e,r){
                        //con.query("insert into users(username) values('"+username+"');",function(e,r){ 
                     if(e)
                          {
                              throw e;
                          }
                          else{
                           console.log("query executed sucess")
                           res.send("query executed insert")
                          }
                      })
                    //res.send("read user details")
                   // con.end();
                  }
        }
          })
    //  }
    //con.end();
//});
    
})

//login
app.post("/login",function(req,res){
    var username = req.body.name;
    var password = req.body.password;
con.query("select * from U42YZEoduq.users where username ='"+username+"' ",function(err,resu){
    if(err){
        throw err;
    }
    else
    {
        if(resu.length)
        {
            con.query("select * from U42YZEoduq.users where username='"+username+"' and password='"+password+"'",function(e,r){
                if(e){
                    throw e;
                }
                else
                {
                    if(r.length){
                    res.send("open account")
                    console.log("open account")
                    }
                    else{
                        res.send("incorrect passwored")
                        console.log("incorrect password")
                    }
                }
            })
        }
        else{
            console.log("user not registered")
            res.send("user not registered")
        }
    }
})
})

//Establish query for insert  from post method
/*app.post('/register',function(req,res){

    var username = req.body.name;

con.query("use sam;",function(error,result){
    if(error)
    {
throw error;
    }
    else
    {
        con.query("insert into users(username) values('"+username+"');",function(err,resu){
            if(err){
                throw err;
            }
            else{
                console.log('querry executed')
                res.send("query executed")
                
                con.end();
            }
        })
    }
});

});

//Establish query for insert try
con.query("use sam;",function(error,result){
    if(error)
    {
throw error;
    }
    else
    {
        //con.query("select * from users")
        con.query("insert into users(username) values('joseph')",function(err,resu){
            if(err){
                throw err;
            }
            else{
                console.log('querry executed')
            }
        })
    }
})
*/
