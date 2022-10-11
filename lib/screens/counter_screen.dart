

import 'package:flutter/material.dart';

class counter_screen extends StatefulWidget{
  const counter_screen({super.key});

  @override
  State<counter_screen> createState() => _counter_screenState();
}

class _counter_screenState extends State<counter_screen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    const miEstilo = TextStyle(fontSize: 20);
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Screen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            const Text('Numero de clicks', style: miEstilo,),
            Text('$contador', style: miEstilo),
          ],
        ),
    ),


    floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    //Primer boton

    floatingActionButton: const tresBotonesWidgetPersonalizado(),
    );
  }
}

// ignore: camel_case_types
class tresBotonesWidgetPersonalizado extends StatelessWidget {
  const tresBotonesWidgetPersonalizado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const[
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add ),
          
          ),


    //Segundo boton

      

          FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.remove ),
          
          ),  
    //Tercer boton

   

          FloatingActionButton(
          onPressed:null,
          child: Icon(Icons.recycling ),
          
          ),  

      ],
    );
  }
}
