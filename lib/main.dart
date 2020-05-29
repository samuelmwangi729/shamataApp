import 'package:flutter/material.dart';
import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/signUp': (BuildContext context)=> new SignUp()
      },
      debugShowCheckedModeBanner: false,
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
                child: Text('Sign In to Shamata Girls Elearning Portal',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30.0,color: Colors.green,decoration: TextDecoration.underline)),
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
              SizedBox(height: 5.0),
              Container(
                alignment: Alignment(1.0, 0),
                padding: EdgeInsets.only(top:20.0,left:20.0),
                child: InkWell(
                  onTap: (){
                    //print('clicked, forgot password');
                  },
                  child: Text('Forgot Pasword',style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ))
                )
              ),
              SizedBox(height: 20.0),
              Container(
                height: 40.0,
                child: InkWell(
                  onTap: (){},
                  child:Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor:Colors.green,
                  color: Colors.lightGreen,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: (){},
                    child: Center(
                      child: Text(
                      'Login Your Account',
                      style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold,color: Colors.red),
                    )
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
                     Navigator.of(context).pushNamed('/signUp');
                  },
                  child:Material(
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: Colors.lightGreen,
                  color: Colors.lightGreen,
                  elevation: 7.0,
                  child:GestureDetector(
                    onTap: (){
                     Navigator.of(context).pushNamed('/signUp');
                    },
                    child: Center(
                      child: Text(
                        'Sign Up for An Account',
                         style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold,color: Colors.red),
                      )
                    )
                  )
                )
                )
              ),
              SizedBox(height: 60.0),
              new Container(
                padding: EdgeInsets.only(top:40.0,left: 20.0),
                child: InkWell(
                  onTap: (){},
                  child: Text(
                    'Where Everyone Counts',
                     style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold,color: Colors.red),
                  ),
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
