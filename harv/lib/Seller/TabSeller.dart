import 'package:flutter/material.dart';
import 'SellerSignUp.dart';
import 'SellerLogIn.dart';



class TabSeller extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  int _currentIndex = 0;

  List<Widget> _tabList = [
SellerSignUp(),
   SellerLogIn()
   
    

  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
          home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: TabBarView(
          controller: _tabController,
          children: _tabList,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (currentIndex){

            setState(() {
              _currentIndex = currentIndex;
            });

              _tabController.animateTo(_currentIndex);

          },
          items: [
            BottomNavigationBarItem(
              title: Text("SignUp"),
              icon: Icon(Icons.arrow_right)
            ),
            BottomNavigationBarItem(
              title: Text("LogIn"),
              icon: Icon(Icons.arrow_left)
            ),
           
          ],
        ),
      ),
    );
  }
}