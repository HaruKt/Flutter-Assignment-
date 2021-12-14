import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:Myapp()));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width*0.8,
                height: height*0.5,
                child: Image.asset('assets/logo.png', width:1),
              ),

              SizedBox(height: 1.0,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              TextField(

                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 0.1,),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Forget password?',style: TextStyle(fontSize: 12.0),),
                  ],
                ),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.yellowAccent[700],
                onPrimary: Colors.black,
                side: BorderSide(color: Colors.black),
                minimumSize: Size(300, 45),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),




              ),
                onPressed: () {},
                child: Text('Log In', style: TextStyle(fontSize: 20.0)),
              )


            ],
          ),
        ),
      ),
    );
  }
}

