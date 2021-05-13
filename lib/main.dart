import 'package:flutter/material.dart';

void main() => runApp(danaApp());

class danaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi Aplicacion Interactiva",
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: PaginaInicial(),
    ); //Fin Material
  } //Fin Widget
} //Fin de Fila Columna

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Aplicacion Interactiva de Dana Romero'),
          ),//Fin AppBar
          body: Card(
          child: Center(
	        child: Column(
        	children: <Widget>[
         	Image.asset("images/camara.png"),
  	    ],//Fin Widget
	    ),//Fin Columna
     ),//Fin Center
    ),//Fin Body         
   );//Fin Scaffold
  }//Fin Widget
}//Fin PaginaInicial
