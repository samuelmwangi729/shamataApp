import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(SignUp());

class SignUp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String , WidgetBuilder>{
        '/login': (BuildContext context)=> new MyApp()
      },
      color: Colors.lightGreen,
      title: 'Shamata E-learning',
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: true,
      body:SingleChildScrollView(
        child: Column(
        children: <Widget>[
          Container(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(50, 150, 50.0, 50.0),
                child: Text('Sign Up to Shamata Girls Elearning Portal',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30.0,color: Colors.green,decoration: TextDecoration.underline)),
              ),
            ]
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 30.0,left: 30.0),
          child: Column(
            children: <Widget>[
              new TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter the Email',
                  labelText:'Email Address',
                  labelStyle: TextStyle(
                    color: Colors.green
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:BorderSide(color: Colors.green)
                  )
                )
              ),
               new TextField(
                 keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Phone Number',
                  labelText:'Phone Number ',
                  labelStyle: TextStyle(
                    color: Colors.green
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:BorderSide(color: Colors.green)
                  )
                )
              ),
              SizedBox(height: 10.0),
              new TextField(
                decoration: InputDecoration(
                  hintText: 'Enter the Password',
                  labelText:'Password',
                  labelStyle: TextStyle(
                    color: Colors.green
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:BorderSide(color: Colors.green)
                  )
                ),
                obscureText: true,
              ),
              SizedBox(height: 10.0),
              new TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm the Password',
                  labelText:'Confirm Password',
                  labelStyle: TextStyle(
                    color: Colors.green
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:BorderSide(color: Colors.green)
                  )
                ),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              Container(
                height: 40.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor:Colors.green,
                  color: Colors.lightGreen,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: (){},
                    child: Center(
                      child: Text(
                      'Register',
                      style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold,color: Colors.red),
                    )
                    )
                  )
                )
              ),
              SizedBox(height: 20.0),
              Container(
                height: 40.0,
                child: InkWell(
                  onTap: (){
                      Navigator.of(context).pushNamed('/login');
                  },
                  child:Material(
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: Colors.black,
                  color: Colors.black,
                  elevation: 0.0,
                  child:GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed('/login');
                    },
                    child: Center(
                      child: Text(
                        'Back',
                         style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold,color: Colors.white),
                      )
                    )
                  )
                )
                )
              ),
            ]
          )
        ),
      ],
      )
      )
    );
  }
}
