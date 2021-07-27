import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView (
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill
                )
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/light-1.png')
                      )
                    ),
                  ),
                  ),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/light-2.png')
                      )
                    ),
                  ),
                  ),
                   Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/clock.png')
                      )
                    ),
                  ),
                  ),
                  Positioned (child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Center(
                      child: Text("Login",style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),),
                    
                    ),
                    
                  ))
                
                  
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(143, 148, 251, .2),
                        blurRadius: 20.0,
                        offset: Offset(0,10)
                      )
                    ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: (Colors.grey[100])!),


                        ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email or Phone number",
                            hintStyle: TextStyle(color: Colors.grey[400])
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: (Colors.grey[100])!),


                        ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey[400])
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, .6)
                      ]
                    )
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Dashboard()),
  );
                      
                    },
          child: Text('Login'),
                    //child: Text("Login",style: TextStyle(color: Colors.white),)
                    ),
                  ),
                  SizedBox(height: 70,),
                  Text("Forgot Password",style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1),)
                  ),
              
              ],
            ),)
          ],
        ),
      ),
      
    );
  }
}

class Dashboard extends StatelessWidget {
  final List<String> _listItem = [
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
       appBar: AppBar(
         backgroundColor: Colors.transparent,
         elevation: 0,
         leading: Icon(Icons.menu),
         title: Center(child: Text("Dashboard")),
         
         actions: <Widget>[
           Padding(padding: EdgeInsets.all(10.0),
           child: Container(
             width: 30,
             height: 30,
             decoration: BoxDecoration(
               color: Colors.blue[800],
               borderRadius: BorderRadius.circular(10)
              
             ),
             child: Center(child: Text("0")),
           ),
           )
         ],

       
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/one.jpg'),
                    fit: BoxFit.cover

                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ]

                    ),
                  
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Lifestyle Sale", style: TextStyle(color: Colors.white, fontSize: 35,fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                          
                        ),
                        child: Center(child: Text("Shop Now", style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),)),
                      ),
                      SizedBox(height: 30,),
                      
                      
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Expanded(child: 
              GridView.count(crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: _listItem.map((item) => Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                
                                image: AssetImage(item),
                                fit: BoxFit.cover
                              )
                            ),
                            child: Transform.translate(offset: Offset(50, -40),
                          
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 65,vertical: 63),
                                height: 40,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:Colors.white
                                ),
                                child: Icon(Icons.bookmark_border,size: 15,),
                              ),
                            ),
                          ),

                      ),
                      )).toList()
                  )
              ),
              
            ],
          ),

        ),
      ),
    );
  }
}