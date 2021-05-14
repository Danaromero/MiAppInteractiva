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

class PaginaInicial extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PaginaInicial> {
  bool _enabled = true;
  int value;
  List<DropdownMenuItem<int>> items = [
    DropdownMenuItem(
      value: 5,
      child: Text('2000'),
    ),
    DropdownMenuItem(
      value: 27,
      child: Text('2001'),
    ),
    DropdownMenuItem(
      value: 31,
      child: Text('2002'),
    ),
    DropdownMenuItem(
      value: 32,
      child: Text('2003'),
    ),
    DropdownMenuItem(
      value: 33,
      child: Text('2004'),
    ),
    DropdownMenuItem(
      value: 34,
      child: Text('2005'),
    ),
    DropdownMenuItem(
      value: 35,
      child: Text('2006'),
    ),
    DropdownMenuItem(
      value: 36,
      child: Text('2007'),
    ),
    DropdownMenuItem(
      value: 37,
      child: Text('2008'),
    ),
    DropdownMenuItem(
      value: 38,
      child: Text('2009'),
    ),
    DropdownMenuItem(
      value: 39,
      child: Text('2010'),
    ),
    DropdownMenuItem(
      value: 40,
      child: Text('2011'),
    ),
    DropdownMenuItem(
      value: 41,
      child: Text('2012'),
    ),
    DropdownMenuItem(
      value: 42,
      child: Text('2013'),
    ),
    DropdownMenuItem(
      value: 43,
      child: Text('2014'),
    ),
    DropdownMenuItem(
      value: 44,
      child: Text('2015'),
    ),
    DropdownMenuItem(
      value: 45,
      child: Text('2016'),
    ),
    DropdownMenuItem(
      value: 46,
      child: Text('2017'),
    ),
    DropdownMenuItem(
      value: 47,
      child: Text('2018'),
    ),
    DropdownMenuItem(
      value: 48,
      child: Text('2019'),
    ),
    DropdownMenuItem(
      value: 49,
      child: Text('2020'),
    ),
    DropdownMenuItem(
      value: 50,
      child: Text('2021'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bienvenido a Tetos Cars'),
      ),//Fin AppBar
      body: Center(
        child: Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
            ),
            Image.asset("images/q.PNG"),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
            ),

            Padding(
              //Inicio Primer Padding
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                //TextFormField
                validator: (String value) {
                  //Inicio Validator
                  if (value.isEmpty) {
                    //IF
                    return 'Modelo del Auto';
                  } else if (value.length < 3) {
                    //ELSE IF
                    return 'El nombre de usuario debe tener al menos 3 caracteres';
                  }
                  return null;
                }, //Fin Validator
                decoration: InputDecoration(
                  //Decorar
                  labelText: 'Ingresa la Marca del Auto',
                  icon: Icon(Icons.edit_rounded, color: Colors.pink),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                ), //Fin decoration
              ), //Fin TextFormField
            ), //Fin Primer Padding
            Padding(
              //Inicio Primer Padding
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                //TextFormField
                validator: (String value) {
                  //Inicio Validator
                  if (value.isEmpty) {
                    //IF
                    return 'Nombre usuario Vacio';
                  } else if (value.length < 3) {
                    //ELSE IF
                    return 'El nombre de usuario debe tener al menos 3 caracteres';
                  }
                  return null;
                }, //Fin Validator
                decoration: InputDecoration(
                  //Decorar
                  labelText: 'Ingresa el Modelo del Auto',
                  icon: Icon(Icons.drive_eta, color: Colors.indigo),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                ), //Fin decoration
              ), //Fin TextFormField
            ), //Fin Primer Padding
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(width: 20),
                new Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Martricula'),
                    validator: (value) {
                      return value.isEmpty ? 'Empty name.' : '';
                    },
                  ),
                ),//Fin Expanded
                DropdownButton(
                  items: items,
                  hint: Text("Selecciona el Año"),
                  onChanged: _enabled
                      ? (v) => setState(() {
                            value = v;
                          })
                      : null,
                  value: value,
                ), //Fin DropdownButton
              ], //Fin Widget []
            ), //Fin del primer Row

            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue[200],
                  onPressed: () => print("Button Pressed"),
                  child: new Text("Aceptar"),
                  splashColor: Colors.cyan,
                  animationDuration: Duration(seconds: 20),
                  padding: EdgeInsets.all(20.0),
                  colorBrightness: Brightness.light,
                ), //Fin RaisedButton
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                RaisedButton(
                  color: Colors.greenAccent[200],
                  onPressed: () => print("Button Pressed"),
                  child: new Text("Cancelar"),
                  splashColor: Colors.green,
                  animationDuration: Duration(seconds: 20),
                  padding: EdgeInsets.all(20.0),
                ), //Fin RaisedButton

              ], //Fin Widget
            ), //Fin Row 2
            Image.asset("images/car.png"),
          ],//Fin Children Widget

        ),//Fin Columna
      ),//Fin Body Center
    );//Fin Scaffold
  }//Fin Widget
}//Fin _MyHomePageState
