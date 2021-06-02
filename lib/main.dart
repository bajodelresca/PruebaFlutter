import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:cuerpo()
    );
  }
}

Widget cuerpo(){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/1e/0b/e9/1e0be997db2a77a1612735c7071f4536.jpg"),
      fit:BoxFit.cover)
    ),
    child:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          nombre(),
          SizedBox(height:15),
          campoUsaurio(),
          campoContrasena(),
          SizedBox(height:15),
          botonentrar()]
        ,)
    )  ,
    );
}

Widget nombre(){
  return Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 25.0,fontWeight: FontWeight.bold),);
}

Widget campoUsaurio(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true
      ) ,
    ),
  );
}

Widget campoContrasena(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true
      ) ,
    ),
  );
}

Widget botonentrar(){
  // ignore: deprecated_member_use
  return FlatButton(
    color:Colors.blueAccent,
    padding:EdgeInsets.symmetric(horizontal: 30,vertical: 10 ),
    onPressed: (){},
    child: Text("Enter", style: TextStyle(fontSize: 20, color:Colors.white),)
  );
}